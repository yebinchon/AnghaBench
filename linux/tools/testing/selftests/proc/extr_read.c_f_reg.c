
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;
typedef int DIR ;


 int O_NONBLOCK ;
 int O_RDONLY ;
 int assert (int) ;
 int close (int) ;
 int dirfd (int *) ;
 int openat (int ,char const*,int) ;
 int read (int,char*,int) ;

__attribute__((used)) static void f_reg(DIR *d, const char *filename)
{
 char buf[4096];
 int fd;
 ssize_t rv;


 fd = openat(dirfd(d), filename, O_RDONLY|O_NONBLOCK);
 if (fd == -1)
  return;
 rv = read(fd, buf, sizeof(buf));
 assert((0 <= rv && rv <= sizeof(buf)) || rv == -1);
 close(fd);
}
