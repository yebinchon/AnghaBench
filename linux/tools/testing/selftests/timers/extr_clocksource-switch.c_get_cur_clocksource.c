
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDONLY ;
 int open (char*,int ) ;
 size_t read (int,char*,size_t) ;

int get_cur_clocksource(char *buf, size_t size)
{
 int fd;

 fd = open("/sys/devices/system/clocksource/clocksource0/current_clocksource", O_RDONLY);

 size = read(fd, buf, size);

 return 0;
}
