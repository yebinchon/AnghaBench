
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCK_HWSPECIFIC ;
 int CLOCK_PROCESS_CPUTIME_ID ;
 int CLOCK_REALTIME ;
 int CLOCK_THREAD_CPUTIME_ID ;
 int NR_CLOCKIDS ;
 int NSEC_PER_SEC ;
 int UNSUPPORTED ;
 char* clockstring (int) ;
 int fflush (int ) ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int nanosleep_test (int,long long) ;
 int printf (char*,...) ;
 int stdout ;

int main(int argc, char **argv)
{
 long long length;
 int clockid, ret;

 for (clockid = CLOCK_REALTIME; clockid < NR_CLOCKIDS; clockid++) {


  if (clockid == CLOCK_PROCESS_CPUTIME_ID ||
    clockid == CLOCK_THREAD_CPUTIME_ID ||
    clockid == CLOCK_HWSPECIFIC)
   continue;

  printf("Nanosleep %-31s ", clockstring(clockid));
  fflush(stdout);

  length = 10;
  while (length <= (NSEC_PER_SEC * 10)) {
   ret = nanosleep_test(clockid, length);
   if (ret == UNSUPPORTED) {
    printf("[UNSUPPORTED]\n");
    goto next;
   }
   if (ret < 0) {
    printf("[FAILED]\n");
    return ksft_exit_fail();
   }
   length *= 100;
  }
  printf("[OK]\n");
next:
  ret = 0;
 }
 return ksft_exit_pass();
}
