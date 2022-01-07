
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int mqueue_lat_test () ;
 int printf (char*) ;
 int stdout ;

int main(int argc, char **argv)
{
 int ret;

 printf("Mqueue latency :                          ");
 fflush(stdout);

 ret = mqueue_lat_test();
 if (ret < 0) {
  printf("[FAILED]\n");
  return ksft_exit_fail();
 }
 printf("[OK]\n");
 return ksft_exit_pass();
}
