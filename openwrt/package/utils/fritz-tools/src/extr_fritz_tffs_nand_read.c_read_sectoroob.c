
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_oob_buf {int ptr; int length; int start; } ;
typedef int off_t ;


 int MEMREADOOB ;
 int TFFS_SECTOR_OOB_SIZE ;
 scalar_t__ ioctl (int ,int ,struct mtd_oob_buf*) ;
 int mtdfd ;
 int oobbuf ;

__attribute__((used)) static int read_sectoroob(off_t pos)
{
 struct mtd_oob_buf oob = {
  .start = pos,
  .length = TFFS_SECTOR_OOB_SIZE,
  .ptr = oobbuf
 };

 if (ioctl(mtdfd, MEMREADOOB, &oob) < 0) {
  return -1;
 }

 return 0;
}
