
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 scalar_t__ flag_monitor ;
 scalar_t__ flag_monitor_continuous ;
 int perror (char const*) ;
 int printw (char*,char const*,int ) ;
 int strerror (int ) ;

void nperror(const char *s) {
if (flag_monitor || flag_monitor_continuous)
    printw("%s:%s", s, strerror(errno));
else
    perror(s);
}
