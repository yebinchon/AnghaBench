
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int DIR ;


 int O_WRONLY ;
 int assert (int) ;
 int close (int) ;
 int dirfd (int *) ;
 int openat (int ,char const*,int ) ;
 size_t write (int,char const*,size_t) ;

__attribute__((used)) static void f_reg_write(DIR *d, const char *filename, const char *buf, size_t len)
{
 int fd;
 ssize_t rv;

 fd = openat(dirfd(d), filename, O_WRONLY);
 if (fd == -1)
  return;
 rv = write(fd, buf, len);
 assert((0 <= rv && rv <= len) || rv == -1);
 close(fd);
}
