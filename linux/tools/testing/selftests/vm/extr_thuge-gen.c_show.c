
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 unsigned long getpagesize () ;
 int printf (char*,unsigned long) ;
 int snprintf (char*,int,char*,unsigned long) ;
 int stdout ;
 int system (char*) ;

void show(unsigned long ps)
{
 char buf[100];
 if (ps == getpagesize())
  return;
 printf("%luMB: ", ps >> 20);
 fflush(stdout);
 snprintf(buf, sizeof buf,
  "cat /sys/kernel/mm/hugepages/hugepages-%lukB/free_hugepages",
  ps >> 10);
 system(buf);
}
