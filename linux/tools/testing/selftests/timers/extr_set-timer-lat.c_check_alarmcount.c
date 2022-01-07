
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alarmcount ;
 int describe_timer (int,int) ;
 int printf (char*,...) ;

int check_alarmcount(int flags, int interval)
{
 describe_timer(flags, interval);
 printf("count: %19d : ", alarmcount);
 if (alarmcount == 1) {
  printf("[OK]\n");
  return 0;
 }
 printf("[FAILED]\n");
 return -1;
}
