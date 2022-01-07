
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;


 int O_WRONLY ;
 int close (int) ;
 int open (char*,int ) ;
 int strlen (char*) ;
 scalar_t__ write (int,char*,int ) ;

int change_clocksource(char *clocksource)
{
 int fd;
 ssize_t size;

 fd = open("/sys/devices/system/clocksource/clocksource0/current_clocksource", O_WRONLY);

 if (fd < 0)
  return -1;

 size = write(fd, clocksource, strlen(clocksource));

 if (size < 0)
  return -1;

 close(fd);
 return 0;
}
