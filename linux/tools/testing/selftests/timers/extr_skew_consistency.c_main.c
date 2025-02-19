
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timex {int freq; scalar_t__ offset; void* modes; } ;
typedef scalar_t__ pid_t ;


 void* ADJ_FREQUENCY ;
 int WNOHANG ;
 int adjtimex (struct timex*) ;
 scalar_t__ fork () ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int printf (char*) ;
 int system (char*) ;
 int usleep (int) ;
 scalar_t__ waitpid (scalar_t__,int*,int ) ;

int main(int argv, char **argc)
{
 struct timex tx;
 int ret, ppm;
 pid_t pid;


 printf("Running Asynchronous Frequency Changing Tests...\n");

 pid = fork();
 if (!pid)
  return system("./inconsistency-check -c 1 -t 600");

 ppm = 500;
 ret = 0;

 while (pid != waitpid(pid, &ret, WNOHANG)) {
  ppm = -ppm;
  tx.modes = ADJ_FREQUENCY;
  tx.freq = ppm << 16;
  adjtimex(&tx);
  usleep(500000);
 }


 tx.modes = ADJ_FREQUENCY;
 tx.offset = 0;
 adjtimex(&tx);


 if (ret) {
  printf("[FAILED]\n");
  return ksft_exit_fail();
 }
 printf("[OK]\n");
 return ksft_exit_pass();
}
