
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ write (int,void const*,size_t) ;

ssize_t write_nointr(int fd, const void *buf, size_t count)
{
 ssize_t ret;

again:
 ret = write(fd, buf, count);
 if (ret < 0 && errno == EINTR)
  goto again;

 return ret;
}
