
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {int freq; int modes; } ;


 int ADJ_FREQUENCY ;
 int adjtimex (struct timex*) ;
 int printf (char*) ;
 int system (char*) ;

int change_skew_test(int ppm)
{
 struct timex tx;
 int ret;

 tx.modes = ADJ_FREQUENCY;
 tx.freq = ppm << 16;

 ret = adjtimex(&tx);
 if (ret < 0) {
  printf("Error adjusting freq\n");
  return ret;
 }

 ret = system("./raw_skew");
 ret |= system("./inconsistency-check");
 ret |= system("./nanosleep");

 return ret;
}
