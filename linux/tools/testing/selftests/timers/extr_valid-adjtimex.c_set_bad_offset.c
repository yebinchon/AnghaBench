
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long tv_sec; long tv_usec; } ;
struct timex {TYPE_1__ time; int modes; } ;


 int ADJ_NANO ;
 int ADJ_SETOFFSET ;
 int CLOCK_REALTIME ;
 int clock_adjtime (int ,struct timex*) ;
 int printf (char*,...) ;

int set_bad_offset(long sec, long usec, int use_nano)
{
 struct timex tmx = {};
 int ret;

 tmx.modes = ADJ_SETOFFSET;
 if (use_nano)
  tmx.modes |= ADJ_NANO;

 tmx.time.tv_sec = sec;
 tmx.time.tv_usec = usec;
 ret = clock_adjtime(CLOCK_REALTIME, &tmx);
 if (ret >= 0) {
  printf("Invalid (sec: %ld  usec: %ld) did not fail! ", tmx.time.tv_sec, tmx.time.tv_usec);
  printf("[FAIL]\n");
  return -1;
 }
 return 0;
}
