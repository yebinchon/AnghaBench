
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info_user {int type; int erasesize; int size; } ;


 int MEMGETINFO ;
 int close (int) ;
 int erasesize ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ ioctl (int,int ,struct mtd_info_user*) ;
 int mtd_open (char const*,int) ;
 int mtdsize ;
 int mtdtype ;
 int stderr ;

int mtd_check_open(const char *mtd)
{
 struct mtd_info_user mtdInfo;
 int fd;

 fd = mtd_open(mtd, 0);
 if(fd < 0) {
  fprintf(stderr, "Could not open mtd device: %s\n", mtd);
  return -1;
 }

 if(ioctl(fd, MEMGETINFO, &mtdInfo)) {
  fprintf(stderr, "Could not get MTD device info from %s\n", mtd);
  close(fd);
  return -1;
 }
 mtdsize = mtdInfo.size;
 erasesize = mtdInfo.erasesize;
 mtdtype = mtdInfo.type;

 return fd;
}
