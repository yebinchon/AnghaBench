
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_test () ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int printf (char*) ;
 int rand () ;
 scalar_t__ run_test (int ,double,double) ;
 int set_frequency (double) ;

int main(int argc, char **argv)
{
 double freq_base, freq_step;
 int i, j, fails = 0;

 init_test();

 printf("Checking response to frequency step:\n");
 printf("  Step           1st interval              2nd interval\n");
 printf("             Freq    Dev     Max       Freq    Dev     Max\n");

 for (i = 2; i >= 0; i--) {
  for (j = 0; j < 5; j++) {
   freq_base = (rand() % (1 << 24) - (1 << 23)) / 65536e6;
   freq_step = 10e-6 * (1 << (6 * i));
   fails += run_test(0, freq_base, freq_step);
  }
 }

 set_frequency(0.0);

 if (fails)
  return ksft_exit_fail();

 return ksft_exit_pass();
}
