-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm2dj7u
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssm2dj7u`
--

/*!40000 DROP DATABASE IF EXISTS `ssm2dj7u`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm2dj7u` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm2dj7u`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danweirenzheng`
--

DROP TABLE IF EXISTS `danweirenzheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `danweirenzheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `faren` varchar(200) DEFAULT NULL COMMENT '法人',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `qiyedizhi` varchar(200) NOT NULL COMMENT '企业地址',
  `yingyezhizhao` varchar(200) NOT NULL COMMENT '营业执照',
  `zhuceriqi` date DEFAULT NULL COMMENT '注册日期',
  `zhuceziben` varchar(200) DEFAULT NULL COMMENT '注册资本',
  `yingyefanwei` longtext COMMENT '营业范围',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='单位认证';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danweirenzheng`
--

LOCK TABLES `danweirenzheng` WRITE;
/*!40000 ALTER TABLE `danweirenzheng` DISABLE KEYS */;
INSERT INTO `danweirenzheng` VALUES (21,'2022-03-26 01:25:12','用户账号1','法人1','手机号1','身份证1','企业名称1','企业地址1','upload/danweirenzheng_yingyezhizhao1.jpg','2022-03-26','注册资本1','营业范围1','是',''),(22,'2022-03-26 01:25:12','用户账号2','法人2','手机号2','身份证2','企业名称2','企业地址2','upload/danweirenzheng_yingyezhizhao2.jpg','2022-03-26','注册资本2','营业范围2','是',''),(23,'2022-03-26 01:25:12','用户账号3','法人3','手机号3','身份证3','企业名称3','企业地址3','upload/danweirenzheng_yingyezhizhao3.jpg','2022-03-26','注册资本3','营业范围3','是',''),(24,'2022-03-26 01:25:12','用户账号4','法人4','手机号4','身份证4','企业名称4','企业地址4','upload/danweirenzheng_yingyezhizhao4.jpg','2022-03-26','注册资本4','营业范围4','是',''),(25,'2022-03-26 01:25:12','用户账号5','法人5','手机号5','身份证5','企业名称5','企业地址5','upload/danweirenzheng_yingyezhizhao5.jpg','2022-03-26','注册资本5','营业范围5','是',''),(26,'2022-03-26 01:25:12','用户账号6','法人6','手机号6','身份证6','企业名称6','企业地址6','upload/danweirenzheng_yingyezhizhao6.jpg','2022-03-26','注册资本6','营业范围6','是','');
/*!40000 ALTER TABLE `danweirenzheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongzhigonggao`
--

DROP TABLE IF EXISTS `tongzhigonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongzhigonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) DEFAULT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) DEFAULT NULL COMMENT '公告类型',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongzhigonggao`
--

LOCK TABLES `tongzhigonggao` WRITE;
/*!40000 ALTER TABLE `tongzhigonggao` DISABLE KEYS */;
INSERT INTO `tongzhigonggao` VALUES (61,'2022-03-26 01:25:12','公告标题1','公告类型1','公告内容1','2022-03-26','发布人1','upload/tongzhigonggao_fengmian1.jpg'),(62,'2022-03-26 01:25:12','公告标题2','公告类型2','公告内容2','2022-03-26','发布人2','upload/tongzhigonggao_fengmian2.jpg'),(63,'2022-03-26 01:25:12','公告标题3','公告类型3','公告内容3','2022-03-26','发布人3','upload/tongzhigonggao_fengmian3.jpg'),(64,'2022-03-26 01:25:12','公告标题4','公告类型4','公告内容4','2022-03-26','发布人4','upload/tongzhigonggao_fengmian4.jpg'),(65,'2022-03-26 01:25:12','公告标题5','公告类型5','公告内容5','2022-03-26','发布人5','upload/tongzhigonggao_fengmian5.jpg'),(66,'2022-03-26 01:25:12','公告标题6','公告类型6','公告内容6','2022-03-26','发布人6','upload/tongzhigonggao_fengmian6.jpg');
/*!40000 ALTER TABLE `tongzhigonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-26 01:25:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiangmushenbao`
--

DROP TABLE IF EXISTS `xiangmushenbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiangmushenbao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenbaozhuti` varchar(200) NOT NULL COMMENT '申报主题',
  `shenbaotupian` varchar(200) DEFAULT NULL COMMENT '申报图片',
  `shenbaoxiangmu` varchar(200) DEFAULT NULL COMMENT '申报项目',
  `zhuti` varchar(200) DEFAULT NULL COMMENT '主体',
  `shenbaochengxu` longtext COMMENT '申报程序',
  `shenbaoshijian` datetime DEFAULT NULL COMMENT '申报时间',
  `qita` varchar(200) DEFAULT NULL COMMENT '其他',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `faren` varchar(200) DEFAULT NULL COMMENT '法人',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `qiyedizhi` varchar(200) NOT NULL COMMENT '企业地址',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `pingshenzhuangtai` varchar(200) DEFAULT NULL COMMENT '评审状态',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='项目申报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiangmushenbao`
--

LOCK TABLES `xiangmushenbao` WRITE;
/*!40000 ALTER TABLE `xiangmushenbao` DISABLE KEYS */;
INSERT INTO `xiangmushenbao` VALUES (31,'2022-03-26 01:25:12','申报主题1','upload/xiangmushenbao_shenbaotupian1.jpg','申报项目1','主体1','申报程序1','2022-03-26 09:25:12','其他1','用户账号1','法人1','手机号1','企业地址1','企业名称1','已评审','是',''),(32,'2022-03-26 01:25:12','申报主题2','upload/xiangmushenbao_shenbaotupian2.jpg','申报项目2','主体2','申报程序2','2022-03-26 09:25:12','其他2','用户账号2','法人2','手机号2','企业地址2','企业名称2','已评审','是',''),(33,'2022-03-26 01:25:12','申报主题3','upload/xiangmushenbao_shenbaotupian3.jpg','申报项目3','主体3','申报程序3','2022-03-26 09:25:12','其他3','用户账号3','法人3','手机号3','企业地址3','企业名称3','已评审','是',''),(34,'2022-03-26 01:25:12','申报主题4','upload/xiangmushenbao_shenbaotupian4.jpg','申报项目4','主体4','申报程序4','2022-03-26 09:25:12','其他4','用户账号4','法人4','手机号4','企业地址4','企业名称4','已评审','是',''),(35,'2022-03-26 01:25:12','申报主题5','upload/xiangmushenbao_shenbaotupian5.jpg','申报项目5','主体5','申报程序5','2022-03-26 09:25:12','其他5','用户账号5','法人5','手机号5','企业地址5','企业名称5','已评审','是',''),(36,'2022-03-26 01:25:12','申报主题6','upload/xiangmushenbao_shenbaotupian6.jpg','申报项目6','主体6','申报程序6','2022-03-26 09:25:12','其他6','用户账号6','法人6','手机号6','企业地址6','企业名称6','已评审','是','');
/*!40000 ALTER TABLE `xiangmushenbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuqiuzhengji`
--

DROP TABLE IF EXISTS `xuqiuzhengji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuqiuzhengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhengjizhuti` varchar(200) DEFAULT NULL COMMENT '征集主题',
  `zhengjiduixiang` varchar(200) DEFAULT NULL COMMENT '征集对象',
  `zhengjishijian` date DEFAULT NULL COMMENT '征集时间',
  `zhengjiyaoqiu` longtext COMMENT '征集要求',
  `zhengjitupian` varchar(200) DEFAULT NULL COMMENT '征集图片',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `faren` varchar(200) DEFAULT NULL COMMENT '法人',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='需求征集';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuqiuzhengji`
--

LOCK TABLES `xuqiuzhengji` WRITE;
/*!40000 ALTER TABLE `xuqiuzhengji` DISABLE KEYS */;
INSERT INTO `xuqiuzhengji` VALUES (51,'2022-03-26 01:25:12','征集主题1','征集对象1','2022-03-26','征集要求1','upload/xuqiuzhengji_zhengjitupian1.jpg','用户账号1','法人1','手机号1','是',''),(52,'2022-03-26 01:25:12','征集主题2','征集对象2','2022-03-26','征集要求2','upload/xuqiuzhengji_zhengjitupian2.jpg','用户账号2','法人2','手机号2','是',''),(53,'2022-03-26 01:25:12','征集主题3','征集对象3','2022-03-26','征集要求3','upload/xuqiuzhengji_zhengjitupian3.jpg','用户账号3','法人3','手机号3','是',''),(54,'2022-03-26 01:25:12','征集主题4','征集对象4','2022-03-26','征集要求4','upload/xuqiuzhengji_zhengjitupian4.jpg','用户账号4','法人4','手机号4','是',''),(55,'2022-03-26 01:25:12','征集主题5','征集对象5','2022-03-26','征集要求5','upload/xuqiuzhengji_zhengjitupian5.jpg','用户账号5','法人5','手机号5','是',''),(56,'2022-03-26 01:25:12','征集主题6','征集对象6','2022-03-26','征集要求6','upload/xuqiuzhengji_zhengjitupian6.jpg','用户账号6','法人6','手机号6','是','');
/*!40000 ALTER TABLE `xuqiuzhengji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `faren` varchar(200) DEFAULT NULL COMMENT '法人',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shoujihao` varchar(200) NOT NULL COMMENT '手机号',
  `shenfenzheng` varchar(200) NOT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-03-26 01:25:12','用户账号1','123456','法人1','男','年龄1','upload/yonghu_touxiang1.jpg','13823888881','440300199101010001'),(12,'2022-03-26 01:25:12','用户账号2','123456','法人2','男','年龄2','upload/yonghu_touxiang2.jpg','13823888882','440300199202020002'),(13,'2022-03-26 01:25:12','用户账号3','123456','法人3','男','年龄3','upload/yonghu_touxiang3.jpg','13823888883','440300199303030003'),(14,'2022-03-26 01:25:12','用户账号4','123456','法人4','男','年龄4','upload/yonghu_touxiang4.jpg','13823888884','440300199404040004'),(15,'2022-03-26 01:25:12','用户账号5','123456','法人5','男','年龄5','upload/yonghu_touxiang5.jpg','13823888885','440300199505050005'),(16,'2022-03-26 01:25:12','用户账号6','123456','法人6','男','年龄6','upload/yonghu_touxiang6.jpg','13823888886','440300199606060006');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhuanjiapingshen`
--

DROP TABLE IF EXISTS `zhuanjiapingshen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhuanjiapingshen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenbaozhuti` varchar(200) DEFAULT NULL COMMENT '申报主题',
  `shenbaotupian` varchar(200) DEFAULT NULL COMMENT '申报图片',
  `shenbaoxiangmu` varchar(200) DEFAULT NULL COMMENT '申报项目',
  `zhuti` varchar(200) DEFAULT NULL COMMENT '主体',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `faren` varchar(200) DEFAULT NULL COMMENT '法人',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `pingshenshijian` datetime DEFAULT NULL COMMENT '评审时间',
  `pingshenneirong` longtext COMMENT '评审内容',
  `pingshenjieguo` longtext COMMENT '评审结果',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='专家评审';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhuanjiapingshen`
--

LOCK TABLES `zhuanjiapingshen` WRITE;
/*!40000 ALTER TABLE `zhuanjiapingshen` DISABLE KEYS */;
INSERT INTO `zhuanjiapingshen` VALUES (41,'2022-03-26 01:25:12','申报主题1','upload/zhuanjiapingshen_shenbaotupian1.jpg','申报项目1','主体1','用户账号1','法人1','企业地址1','企业名称1','2022-03-26 09:25:12','评审内容1','评审结果1'),(42,'2022-03-26 01:25:12','申报主题2','upload/zhuanjiapingshen_shenbaotupian2.jpg','申报项目2','主体2','用户账号2','法人2','企业地址2','企业名称2','2022-03-26 09:25:12','评审内容2','评审结果2'),(43,'2022-03-26 01:25:12','申报主题3','upload/zhuanjiapingshen_shenbaotupian3.jpg','申报项目3','主体3','用户账号3','法人3','企业地址3','企业名称3','2022-03-26 09:25:12','评审内容3','评审结果3'),(44,'2022-03-26 01:25:12','申报主题4','upload/zhuanjiapingshen_shenbaotupian4.jpg','申报项目4','主体4','用户账号4','法人4','企业地址4','企业名称4','2022-03-26 09:25:12','评审内容4','评审结果4'),(45,'2022-03-26 01:25:12','申报主题5','upload/zhuanjiapingshen_shenbaotupian5.jpg','申报项目5','主体5','用户账号5','法人5','企业地址5','企业名称5','2022-03-26 09:25:12','评审内容5','评审结果5'),(46,'2022-03-26 01:25:12','申报主题6','upload/zhuanjiapingshen_shenbaotupian6.jpg','申报项目6','主体6','用户账号6','法人6','企业地址6','企业名称6','2022-03-26 09:25:12','评审内容6','评审结果6');
/*!40000 ALTER TABLE `zhuanjiapingshen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-27 17:56:52
