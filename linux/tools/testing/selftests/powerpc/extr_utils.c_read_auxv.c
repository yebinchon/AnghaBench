
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int EIO ;
 int EOVERFLOW ;
 int O_RDONLY ;
 int close (int) ;
 int errno ;
 int open (char*,int ) ;
 int perror (char*) ;
 int printf (char*) ;
 scalar_t__ read (int,char*,scalar_t__) ;

int read_auxv(char *buf, ssize_t buf_size)
{
 ssize_t num;
 int rc, fd;

 fd = open("/proc/self/auxv", O_RDONLY);
 if (fd == -1) {
  perror("open");
  return -errno;
 }

 num = read(fd, buf, buf_size);
 if (num < 0) {
  perror("read");
  rc = -EIO;
  goto out;
 }

 if (num > buf_size) {
  printf("overflowed auxv buffer\n");
  rc = -EOVERFLOW;
  goto out;
 }

 rc = 0;
out:
 close(fd);
 return rc;
}
