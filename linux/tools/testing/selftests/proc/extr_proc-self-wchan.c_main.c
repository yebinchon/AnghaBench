
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 scalar_t__ ENOENT ;
 int O_RDONLY ;
 scalar_t__ errno ;
 int open (char*,int ) ;
 int read (int,char*,int) ;

int main(void)
{
 char buf[64];
 int fd;

 fd = open("/proc/self/wchan", O_RDONLY);
 if (fd == -1) {
  if (errno == ENOENT)
   return 4;
  return 1;
 }

 buf[0] = '\0';
 if (read(fd, buf, sizeof(buf)) != 1)
  return 1;
 if (buf[0] != '0')
  return 1;
 return 0;
}
