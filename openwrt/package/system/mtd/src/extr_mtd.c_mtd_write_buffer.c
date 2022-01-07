
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int lseek (int,int,int ) ;
 int write (int,char const*,int) ;

int mtd_write_buffer(int fd, const char *buf, int offset, int length)
{
 lseek(fd, offset, SEEK_SET);
 write(fd, buf, length);
 return 0;
}
