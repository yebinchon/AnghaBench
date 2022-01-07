
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 scalar_t__ read (int,void*,size_t) ;

__attribute__((used)) static ssize_t read_safe(int fd, void *buf, size_t count)
{
 ssize_t total = 0;
 ssize_t r;

 while(count > 0) {
  r = read(fd, buf, count);
  if (r == 0)

   break;
  if (r < 0) {
   if (errno == EINTR)

    continue;

   total = -1;
   break;
  }


  total += r;
  count -= r;
  buf += r;
 }

 return total;
}
