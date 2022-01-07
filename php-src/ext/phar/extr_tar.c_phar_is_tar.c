
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {char* checksum; } ;
typedef TYPE_1__ tar_header ;


 int PHP_DIR_SEPARATOR ;
 int memcpy (char*,char*,int) ;
 int memset (char*,char,int) ;
 scalar_t__ phar_tar_checksum (char*,int) ;
 scalar_t__ phar_tar_number (char*,int) ;
 int strncmp (char*,char*,int) ;
 char* strrchr (char*,int ) ;
 char* strstr (char*,char*) ;

int phar_is_tar(char *buf, char *fname)
{
 tar_header *header = (tar_header *) buf;
 uint32_t checksum = phar_tar_number(header->checksum, sizeof(header->checksum));
 uint32_t ret;
 char save[sizeof(header->checksum)], *bname;


 if (!strncmp(buf, "<?php", sizeof("<?php")-1)) {
  return 0;
 }

 memcpy(save, header->checksum, sizeof(header->checksum));
 memset(header->checksum, ' ', sizeof(header->checksum));
 ret = (checksum == phar_tar_checksum(buf, 512));
 memcpy(header->checksum, save, sizeof(header->checksum));
 if ((bname = strrchr(fname, PHP_DIR_SEPARATOR))) {
  fname = bname;
 }
 if (!ret && (bname = strstr(fname, ".tar")) && (bname[4] == '\0' || bname[4] == '.')) {

  return 1;
 }
 return ret;
}
