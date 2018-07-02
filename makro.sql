/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.1.31-MariaDB : Database - makro
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`makro` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `makro`;

/*Table structure for table `ak` */

DROP TABLE IF EXISTS `ak`;

CREATE TABLE `ak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  `tahun_7` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `ak` */

insert  into `ak`(`id`,`id_daerah`,`kategori`,`tahun`,`kriteria`,`urut`,`tahun_1`,`tahun_2`,`tahun_3`,`tahun_4`,`tahun_5`,`tahun_6`,`tahun_7`) values (1,1,1,2011,'15-19',1,112,12,76,5,56,77,'65'),(2,1,1,2012,'19-22',2,233,7,6,5,2,6,'7'),(3,1,1,2013,'22-26',3,6,5,4,6,7,8,'4');

/*Table structure for table `daerah` */

DROP TABLE IF EXISTS `daerah`;

CREATE TABLE `daerah` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_daerah` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_provinsi` int(11) DEFAULT NULL,
  `tingkat` enum('0','1') COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `daerah` */

insert  into `daerah`(`id`,`nama_daerah`,`id_provinsi`,`tingkat`,`status`) values (1,'Jawa Barat',1,'0',2),(2,'Kota Bandung',1,'1',5),(3,'Kota Cimahi',3,'1',1),(4,'Kab Bandung',4,'1',1),(5,'Kab Kuningan',5,'1',1),(6,'Kab Cirebon',6,'1',1),(7,'Kab Subang',7,'1',1),(8,'adw',8,'1',1),(9,'awd',9,'1',1),(10,'wad',10,'1',1),(11,'awd',11,'1',1),(12,'awd',12,'1',1),(13,'wad',13,'1',1),(14,'wad',14,'1',1),(15,'wad',15,'1',1),(16,'adw',16,'1',1),(17,'adw',18,'1',1),(18,'adw',18,'1',1),(19,'qw',18,'1',1);

/*Table structure for table `draf` */

DROP TABLE IF EXISTS `draf`;

CREATE TABLE `draf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `draf` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `koreksi` text COLLATE utf8_bin,
  `tgl_upload` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `notifikasi_draf` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id_daerah` (`id_daerah`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `draf` */

insert  into `draf`(`id`,`id_daerah`,`draf`,`koreksi`,`tgl_upload`,`notifikasi_draf`) values (3,1,'305_BA_Rapat_Pleno_Perubahan_Rekap_DPT_Pilgub_Jabar_Tahun_2018.pdf',NULL,'2018-06-27 13:39:19',0),(6,2,'SOAL_UAS_KLS_XI_mtk1.docx',NULL,'2018-07-02 14:19:19',0),(7,3,'','2018-06-27 23:00:05','0000-00-00 00:00:00',0),(8,4,'','2018-06-27 23:00:16','0000-00-00 00:00:00',0),(9,5,'','2018-06-27 23:00:23','0000-00-00 00:00:00',0),(10,6,'','2018-06-27 23:00:32','0000-00-00 00:00:00',0),(11,7,'','2018-06-27 23:00:59','0000-00-00 00:00:00',0),(12,8,'','2018-06-28 00:53:50','0000-00-00 00:00:00',0),(13,9,'','2018-06-28 00:53:50','0000-00-00 00:00:00',0),(14,10,'','2018-06-28 00:53:54','0000-00-00 00:00:00',0),(15,11,'','2018-06-28 00:53:55','0000-00-00 00:00:00',0),(16,12,'','2018-06-28 00:53:55','0000-00-00 00:00:00',0),(17,13,'','2018-06-28 00:53:57','0000-00-00 00:00:00',0),(18,14,'','2018-06-28 00:53:59','0000-00-00 00:00:00',0),(19,15,'','2018-06-28 00:54:00','0000-00-00 00:00:00',0),(20,16,'','2018-06-28 00:54:01','0000-00-00 00:00:00',0),(21,17,'','2018-06-28 00:54:03','0000-00-00 00:00:00',0),(22,18,'','2018-06-28 00:54:17','0000-00-00 00:00:00',0),(23,19,'','2018-06-28 01:13:24','0000-00-00 00:00:00',0);

/*Table structure for table `excel` */

DROP TABLE IF EXISTS `excel`;

CREATE TABLE `excel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `excel` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tgl_upload` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `koreksi` text COLLATE utf8_bin,
  `notifikasi_excel` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id_daerah` (`id_daerah`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `excel` */

insert  into `excel`(`id`,`id_daerah`,`excel`,`tgl_upload`,`koreksi`,`notifikasi_excel`) values (5,1,'2506181028201_(1)11.xlsx','2018-07-02 07:29:26','test',1),(6,2,'2506181028204.xlsx','2018-07-02 12:39:42','test',1),(7,NULL,'eqwe',NULL,NULL,0),(10,3,'','2018-06-27 23:00:05','',0),(11,4,'','2018-06-27 23:00:16','',0),(12,5,'','2018-06-27 23:00:23','',0),(13,6,'','2018-06-27 23:00:32','',0),(14,7,'','2018-06-27 23:00:59','',0),(15,8,'','2018-06-28 00:53:50','',0),(16,9,'','2018-06-28 00:53:50','',0),(17,10,'','2018-06-28 00:53:54','',0),(18,11,'','2018-06-28 00:53:55','',0),(19,12,'','2018-06-28 00:53:55','',0),(20,13,'','2018-06-28 00:53:57','',0),(21,14,'','2018-06-28 00:53:59','',0),(22,15,'','2018-06-28 00:54:00','',0),(23,16,'','2018-06-28 00:54:01','',0),(24,17,'','2018-06-28 00:54:03','',0),(25,18,'','2018-06-28 00:54:17','',0),(26,19,'','2018-06-28 01:13:24','',0);

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `kategori` */

insert  into `kategori`(`id`,`nama_kategori`) values (1,'Golongan Umur'),(2,'Pendidikan'),(3,'Jenis Kelamin'),(4,'Kabupaten/Kota'),(5,'Lapangan Usaha'),(6,'Jenis Pekerjaan'),(7,'Status Pekerjaan'),(8,'Jam Kerja'),(9,'Daerah'),(10,'Kategori');

/*Table structure for table `kategori_pdrb` */

DROP TABLE IF EXISTS `kategori_pdrb`;

CREATE TABLE `kategori_pdrb` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `kategori_pdrb` */

insert  into `kategori_pdrb`(`id`,`nama_kategori`) values (0,''),(1,'Atas Dasar Harga Konstan Menurut Lapangan Usaha 9 Sektor'),(2,'Pertanian, Kehutanan, dan Perikanan'),(3,'Pertambangan dan Penggalian'),(4,'Industri Pengolahan'),(5,'Bangunan');

/*Table structure for table `pdrb` */

DROP TABLE IF EXISTS `pdrb`;

CREATE TABLE `pdrb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun_awal` int(5) DEFAULT NULL,
  `sektor` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  `tahun_7` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `pdrb` */

insert  into `pdrb`(`id`,`id_daerah`,`kategori`,`tahun_awal`,`sektor`,`urut`,`tahun_1`,`tahun_2`,`tahun_3`,`tahun_4`,`tahun_5`,`tahun_6`,`tahun_7`) values (1,1,1,2012,'pertanian',1,13,3,4,9,30,43,'34');

/*Table structure for table `provinsi` */

DROP TABLE IF EXISTS `provinsi`;

CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_provinsi` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `provinsi` */

insert  into `provinsi`(`id`,`nama_provinsi`) values (1,'Jawa Barat'),(2,'Jawa Timur'),(3,'adw'),(4,'ad'),(5,'dxv'),(6,'fes'),(7,'sef'),(8,'xvc'),(9,'543242'),(10,'7656'),(11,'23245'),(12,'gdf'),(13,'dsf'),(14,'we'),(15,'fsrdgfth'),(16,'esf'),(17,'dg'),(18,'sf'),(19,'qwer');

/*Table structure for table `proyeksi_ak` */

DROP TABLE IF EXISTS `proyeksi_ak`;

CREATE TABLE `proyeksi_ak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `proyeksi_ak` */

/*Table structure for table `proyeksi_kesempatan_kerja` */

DROP TABLE IF EXISTS `proyeksi_kesempatan_kerja`;

CREATE TABLE `proyeksi_kesempatan_kerja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `proyeksi_kesempatan_kerja` */

/*Table structure for table `proyeksi_laju_pdrb` */

DROP TABLE IF EXISTS `proyeksi_laju_pdrb`;

CREATE TABLE `proyeksi_laju_pdrb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `proyeksi_laju_pdrb` */

/*Table structure for table `proyeksi_pdrb` */

DROP TABLE IF EXISTS `proyeksi_pdrb`;

CREATE TABLE `proyeksi_pdrb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `proyeksi_pdrb` */

/*Table structure for table `proyeksi_produktivitas` */

DROP TABLE IF EXISTS `proyeksi_produktivitas`;

CREATE TABLE `proyeksi_produktivitas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `proyeksi_produktivitas` */

/*Table structure for table `proyeksi_pt` */

DROP TABLE IF EXISTS `proyeksi_pt`;

CREATE TABLE `proyeksi_pt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `proyeksi_pt` */

/*Table structure for table `proyeksi_puk` */

DROP TABLE IF EXISTS `proyeksi_puk`;

CREATE TABLE `proyeksi_puk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `proyeksi_puk` */

insert  into `proyeksi_puk`(`id`,`id_daerah`,`kategori`,`tahun`,`kriteria`,`urut`,`tahun_1`,`tahun_2`,`tahun_3`,`tahun_4`,`tahun_5`,`tahun_6`) values (1,1,1,2011,'1',1,1,6,5,5,8,8),(2,1,1,2012,'1',2,3,6,7,8,9,7),(3,1,1,2013,'1',3,6,7,8,5,6,5),(4,1,1,2014,'1',4,6,7,8,7,5,6);

/*Table structure for table `proyeksi_tpak` */

DROP TABLE IF EXISTS `proyeksi_tpak`;

CREATE TABLE `proyeksi_tpak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `proyeksi_tpak` */

/*Table structure for table `proyeksi_tpt` */

DROP TABLE IF EXISTS `proyeksi_tpt`;

CREATE TABLE `proyeksi_tpt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `proyeksi_tpt` */

/*Table structure for table `pt` */

DROP TABLE IF EXISTS `pt`;

CREATE TABLE `pt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  `tahun_7` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `pt` */

insert  into `pt`(`id`,`id_daerah`,`kategori`,`tahun`,`kriteria`,`urut`,`tahun_1`,`tahun_2`,`tahun_3`,`tahun_4`,`tahun_5`,`tahun_6`,`tahun_7`) values (1,1,1,2012,'1',1,2,7,6,5,7,8,'9');

/*Table structure for table `puk` */

DROP TABLE IF EXISTS `puk`;

CREATE TABLE `puk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  `tahun_7` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `puk` */

insert  into `puk`(`id`,`id_daerah`,`kategori`,`tahun`,`kriteria`,`urut`,`tahun_1`,`tahun_2`,`tahun_3`,`tahun_4`,`tahun_5`,`tahun_6`,`tahun_7`) values (1,2,1,2011,'15-19',1,6,6,7,67,67,6,'78'),(2,2,1,2011,'20-24',2,2,3,57,88,99,23,'9'),(3,2,1,2011,'25-29',3,2,75,32,3,2,3,'4'),(4,2,1,2011,'30-34',4,2,6,3,4,3,4,'5'),(5,2,1,2011,'35-39',5,2,5,4,6,4,5,'6'),(6,2,1,2011,'40-44',6,23,4,5,5,5,7,'7'),(7,2,1,2011,'45-49',7,4,3,7,4,7,8,'8'),(8,2,1,2011,'50-54',8,4,3,8,7,8,5,'4'),(9,2,1,2011,'55-59',9,5,3,0,8,4,3,'8'),(10,2,1,2011,'60+',10,6,3,5,3,3,2,'4');

/*Table structure for table `pyb` */

DROP TABLE IF EXISTS `pyb`;

CREATE TABLE `pyb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  `tahun_7` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `pyb` */

insert  into `pyb`(`id`,`id_daerah`,`kategori`,`tahun`,`kriteria`,`urut`,`tahun_1`,`tahun_2`,`tahun_3`,`tahun_4`,`tahun_5`,`tahun_6`,`tahun_7`) values (1,1,1,112,'1',1,1,6,5,4,6,8,'2');

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `tanggal` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `status` */

insert  into `status`(`id`,`id_daerah`,`status`,`tanggal`) values (7,1,1,'2018-06-26 21:15:02'),(8,2,1,'2018-06-26 20:01:42'),(9,1,1,'2018-06-26 21:14:36'),(10,2,1,'2018-06-26 19:37:18'),(11,1,1,'2018-06-26 21:14:52'),(12,1,1,'2018-06-26 21:14:56'),(13,1,3,'2018-06-26 21:08:24'),(14,1,4,NULL),(15,1,3,NULL),(16,2,4,NULL),(17,1,3,'2018-06-26 22:03:21'),(18,1,2,'2018-06-27 10:36:30'),(19,2,2,'2018-06-27 10:36:31'),(20,1,1,'2018-06-27 10:36:45'),(21,2,1,'2018-06-27 10:36:46'),(22,1,2,'2018-06-27 10:40:01'),(23,2,2,'2018-06-27 10:40:02'),(24,1,1,'2018-06-27 10:40:52'),(25,1,2,'2018-06-27 10:40:53'),(26,1,1,'2018-06-27 10:40:58'),(27,1,3,'2018-06-27 10:41:21'),(28,1,4,'2018-06-27 10:41:28'),(29,1,5,'2018-06-27 10:43:28'),(30,1,6,'2018-06-27 10:46:52'),(31,1,1,'2018-06-27 10:51:27'),(32,1,2,'2018-06-27 05:56:50'),(33,1,2,'2018-06-27 06:00:01'),(34,1,2,'2018-06-27 11:00:01'),(35,1,1,'2018-06-27 11:09:44'),(36,1,3,'2018-06-27 11:15:35'),(37,2,3,'2018-06-27 11:15:41'),(38,1,1,'2018-06-27 11:15:48'),(39,2,2,'2018-06-27 11:15:49'),(40,1,4,'2018-06-27 07:20:29'),(41,1,3,'2018-06-27 12:55:16'),(42,1,4,'2018-06-27 08:39:19'),(43,1,4,'2018-06-27 08:41:04'),(44,1,4,'2018-06-27 13:41:04'),(45,2,3,'2018-06-27 14:00:48'),(46,2,3,'2018-06-27 14:01:13'),(47,2,4,'2018-06-27 09:01:26'),(48,2,4,'2018-06-27 14:01:26'),(49,1,4,'2018-06-27 09:01:54'),(50,1,4,'2018-06-27 14:01:55'),(51,2,3,'2018-06-27 22:00:06'),(52,2,2,'2018-06-27 22:15:37'),(53,2,3,'2018-06-27 22:21:36'),(54,1,1,'2018-06-27 22:33:24'),(55,2,2,'2018-06-27 22:33:25'),(56,1,0,'2018-06-27 22:33:26'),(57,2,1,'2018-06-27 22:33:26'),(58,1,2,'2018-06-27 22:33:33'),(59,2,3,'2018-06-27 22:33:33'),(60,1,4,'2018-06-27 22:33:40'),(61,2,5,'2018-06-27 22:33:41'),(62,1,1,'2018-06-27 22:39:10'),(63,2,2,'2018-06-27 22:39:10'),(64,3,3,'2018-06-27 22:39:11'),(65,1,0,'2018-06-27 22:39:13'),(66,2,1,'2018-06-27 22:39:13'),(67,3,2,'2018-06-27 22:39:14'),(68,4,3,'2018-06-27 22:39:14'),(69,5,4,'2018-06-27 22:39:15'),(70,6,5,'2018-06-27 22:39:21'),(71,7,6,'2018-06-27 22:39:24'),(72,6,5,'2018-06-27 22:39:38'),(73,7,6,'2018-06-27 22:39:43'),(74,6,5,'2018-06-27 22:39:44'),(75,7,6,'2018-06-27 22:39:45'),(76,3,2,'2018-06-27 23:00:41'),(77,4,3,'2018-06-27 23:00:42'),(78,5,4,'2018-06-27 23:00:42'),(79,6,5,'2018-06-27 23:00:45'),(80,6,5,'2018-06-28 00:13:01'),(81,6,6,'2018-06-28 00:13:11'),(82,2,1,'2018-06-28 00:53:08'),(83,3,2,'2018-06-28 00:53:09'),(84,4,3,'2018-06-28 00:53:10'),(85,6,6,'2018-06-28 00:53:11'),(86,5,4,'2018-06-28 00:53:12'),(87,7,6,'2018-06-28 00:53:15'),(88,1,1,'2018-06-28 00:53:33'),(89,3,1,'2018-06-28 00:53:34'),(90,4,1,'2018-06-28 00:53:35'),(91,5,1,'2018-06-28 00:53:35'),(92,6,1,'2018-06-28 00:53:36'),(93,7,1,'2018-06-28 00:53:36'),(94,9,0,'2018-06-28 00:53:52'),(95,8,1,'2018-06-28 00:54:06'),(96,10,1,'2018-06-28 00:54:08'),(97,9,1,'2018-06-28 00:54:08'),(98,11,1,'2018-06-28 00:54:09'),(99,12,1,'2018-06-28 00:54:09'),(100,13,1,'2018-06-28 00:54:10'),(101,14,1,'2018-06-28 00:54:10'),(102,16,1,'2018-06-28 00:54:12'),(103,15,1,'2018-06-28 00:54:12'),(104,17,1,'2018-06-28 00:54:13'),(105,8,1,'2018-06-28 00:54:47'),(106,9,1,'2018-06-28 00:54:48'),(107,10,1,'2018-06-28 00:54:49'),(108,11,1,'2018-06-28 00:54:49'),(109,12,1,'2018-06-28 00:54:50'),(110,13,1,'2018-06-28 00:54:50'),(111,14,1,'2018-06-28 00:54:51'),(112,15,1,'2018-06-28 00:54:51'),(113,16,1,'2018-06-28 00:54:52'),(114,17,1,'2018-06-28 00:54:52'),(115,18,1,'2018-06-28 00:54:54'),(116,8,1,'2018-06-28 00:55:00'),(117,9,1,'2018-06-28 00:55:01'),(118,10,1,'2018-06-28 00:55:02'),(119,12,1,'2018-06-28 00:55:05'),(120,11,1,'2018-06-28 00:55:08'),(121,14,1,'2018-06-28 00:55:09'),(122,13,1,'2018-06-28 00:55:11'),(123,15,1,'2018-06-28 00:55:14'),(124,16,1,'2018-06-28 00:55:15'),(125,17,1,'2018-06-28 00:55:20'),(126,18,1,'2018-06-28 00:59:12'),(127,19,1,'2018-06-28 01:33:25'),(128,17,1,'2018-06-28 01:33:26'),(129,1,6,'2018-06-28 02:48:06'),(130,1,1,'2018-06-28 02:50:12'),(131,1,0,'2018-06-28 02:50:18'),(132,1,1,'2018-06-28 02:50:59'),(133,1,2,'2018-06-28 02:51:14'),(134,1,3,'2018-06-28 02:51:22'),(135,1,4,'2018-06-28 02:51:29'),(136,1,1,'2018-06-28 02:52:24'),(137,1,2,'2018-06-28 02:52:36'),(138,1,3,'2018-06-28 02:55:56'),(139,1,5,'2018-06-28 02:56:01'),(140,1,1,'2018-06-28 14:33:22'),(141,2,2,'2018-06-28 14:33:22'),(142,2,0,'2018-06-28 14:40:00'),(143,2,0,'2018-06-28 15:18:27'),(144,2,1,'2018-06-28 10:36:17'),(145,2,1,'2018-06-28 15:38:08'),(146,2,2,'2018-06-28 10:39:21'),(147,2,2,'2018-06-28 15:39:21'),(148,2,1,'2018-06-28 10:45:40'),(149,2,1,'2018-06-28 15:46:10'),(150,2,3,'2018-06-28 15:53:39'),(151,2,4,'2018-06-28 11:07:28'),(152,2,4,'2018-06-28 11:08:13'),(153,2,4,'2018-06-28 16:08:27'),(154,2,4,'2018-06-28 11:09:24'),(155,2,4,'2018-06-28 16:09:24'),(156,2,5,'2018-06-28 16:11:03'),(157,2,4,'2018-06-28 16:11:28'),(158,2,5,'2018-06-28 16:11:59'),(159,2,6,'2018-06-28 16:12:43'),(160,2,1,'2018-07-02 12:03:26'),(161,2,1,'2018-07-02 07:03:26'),(162,1,2,'2018-07-02 07:14:15'),(163,1,2,'2018-07-02 12:14:15'),(164,2,2,'2018-07-02 07:14:54'),(165,2,2,'2018-07-02 12:14:54'),(166,2,1,'2018-07-02 12:33:56'),(167,2,1,'2018-07-02 07:33:57'),(168,2,2,'2018-07-02 12:39:49'),(169,2,3,'2018-07-02 12:39:54'),(170,2,4,'2018-07-02 12:40:01'),(171,2,5,'2018-07-02 12:40:22'),(172,2,6,'2018-07-02 12:40:37'),(173,2,3,'2018-07-02 12:41:44'),(174,2,4,'2018-07-02 12:42:39'),(175,2,5,'2018-07-02 12:42:49'),(176,2,4,'2018-07-02 12:43:29'),(177,2,5,'2018-07-02 12:44:02'),(178,2,4,'2018-07-02 12:44:06'),(179,2,4,'2018-07-02 07:44:38'),(180,2,4,'2018-07-02 12:44:39'),(181,2,4,'2018-07-02 07:45:31'),(182,2,4,'2018-07-02 12:45:31'),(183,2,4,'2018-07-02 07:46:38'),(184,2,4,'2018-07-02 12:46:39'),(185,2,5,'2018-07-02 07:48:47'),(186,2,4,'2018-07-02 12:48:47'),(187,2,3,'2018-07-02 14:19:19'),(188,2,4,'2018-07-02 09:19:19'),(189,2,4,'2018-07-02 14:19:51'),(190,2,5,'2018-07-02 09:19:57'),(191,2,4,'2018-07-02 14:19:57'),(192,2,NULL,'2018-07-02 09:20:36'),(193,2,5,'2018-07-02 14:20:36');

/*Table structure for table `tpak` */

DROP TABLE IF EXISTS `tpak`;

CREATE TABLE `tpak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  `tahun_7` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `tpak` */

insert  into `tpak`(`id`,`id_daerah`,`kategori`,`tahun`,`kriteria`,`urut`,`tahun_1`,`tahun_2`,`tahun_3`,`tahun_4`,`tahun_5`,`tahun_6`,`tahun_7`) values (1,1,1,1,'awdaw',1,6,5,4,3,2,8,'7');

/*Table structure for table `tpt` */

DROP TABLE IF EXISTS `tpt`;

CREATE TABLE `tpt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_daerah` int(11) DEFAULT NULL,
  `kategori` int(5) DEFAULT NULL,
  `tahun` int(5) DEFAULT NULL,
  `kriteria` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `urut` int(5) DEFAULT NULL,
  `tahun_1` int(11) DEFAULT NULL,
  `tahun_2` int(11) DEFAULT NULL,
  `tahun_3` int(11) DEFAULT NULL,
  `tahun_4` int(11) DEFAULT NULL,
  `tahun_5` int(11) DEFAULT NULL,
  `tahun_6` int(11) DEFAULT NULL,
  `tahun_7` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

/*Data for the table `tpt` */

insert  into `tpt`(`id`,`id_daerah`,`kategori`,`tahun`,`kriteria`,`urut`,`tahun_1`,`tahun_2`,`tahun_3`,`tahun_4`,`tahun_5`,`tahun_6`,`tahun_7`) values (1,1,1,2012,'1',1,9,7,6,5,7,4,'5');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `id_daerah` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id_user`,`username`,`password`,`id_daerah`) values (1,'jabar123','jabar123',1),(2,'bandung123','bandung123',2);

/* Trigger structure for table `daerah` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `create_excel_draf` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `create_excel_draf` AFTER INSERT ON `daerah` FOR EACH ROW BEGIN
  INSERT INTO excel VALUE('',new.id,'',NOW(),'');
  INSERT INTO draf VALUE('',new.id,'',NOW(),'');

END */$$


DELIMITER ;

/* Trigger structure for table `daerah` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `create_status` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `create_status` AFTER UPDATE ON `daerah` FOR EACH ROW BEGIN
  INSERT INTO STATUS VALUE('',old.id,new.status,NOW());

END */$$


DELIMITER ;

/* Trigger structure for table `daerah` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `delete_excel_draf` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'root'@'localhost' */ /*!50003 TRIGGER `delete_excel_draf` BEFORE DELETE ON `daerah` FOR EACH ROW BEGIN
  delete from excel where excel.id_daerah = old.id;
  DELETE FROM draf WHERE excel.id_daerah = old.id;

END */$$


DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
