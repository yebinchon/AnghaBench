
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 scalar_t__ TFFS_SECTOR_SIZE ;
 int mtdfd ;
 scalar_t__ pread (int ,int ,scalar_t__,int ) ;
 int readbuf ;

__attribute__((used)) static int read_sector(off_t pos)
{
 if (pread(mtdfd, readbuf, TFFS_SECTOR_SIZE, pos) != TFFS_SECTOR_SIZE) {
  return -1;
 }

 return 0;
}
