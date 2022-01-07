
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {scalar_t__ offset; int modes; } ;


 int ADJ_FREQUENCY ;
 int ADJ_OFFSET ;
 int adjtimex (struct timex*) ;
 int change_skew_test (int) ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int printf (char*,...) ;
 int system (char*) ;

int main(int argv, char **argc)
{
 struct timex tx;
 int i, ret;

 int ppm[5] = {0, 250, 500, -250, -500};


 ret = system("killall -9 ntpd");


 tx.modes = ADJ_OFFSET;
 tx.offset = 0;
 ret = adjtimex(&tx);

 if (ret < 0) {
  printf("Maybe you're not running as root?\n");
  return -1;
 }

 for (i = 0; i < 5; i++) {
  printf("Using %i ppm adjustment\n", ppm[i]);
  ret = change_skew_test(ppm[i]);
  if (ret)
   break;
 }


 tx.modes = ADJ_FREQUENCY;
 tx.offset = 0;
 adjtimex(&tx);

 if (ret) {
  printf("[FAIL]");
  return ksft_exit_fail();
 }
 printf("[OK]");
 return ksft_exit_pass();
}
