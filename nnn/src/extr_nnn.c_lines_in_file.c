
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
typedef int ssize_t ;


 int read (int,char*,size_t) ;

__attribute__((used)) static uint lines_in_file(int fd, char *buf, size_t buflen)
{
 ssize_t len;
 uint count = 0;

 while ((len = read(fd, buf, buflen)) > 0)
  while (len)
   count += (buf[--len] == '\n');


 return ((len < 0) ? 0 : count);
}
