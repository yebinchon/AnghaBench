
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int close (int) ;
 int open (char*,int ) ;

__attribute__((used)) static bool can_open_fb0(void)
{
 int fd;

 fd = open("/dev/fb0", O_RDWR);
 if (fd < 0)
  return 0;

 close(fd);
 return 1;
}
