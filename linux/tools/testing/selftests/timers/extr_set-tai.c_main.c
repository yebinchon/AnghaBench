
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int get_tai () ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int printf (char*,...) ;
 int set_tai (int) ;
 int stdout ;

int main(int argc, char **argv)
{
 int i, ret;

 ret = get_tai();
 printf("tai offset started at %i\n", ret);

 printf("Checking tai offsets can be properly set: ");
 fflush(stdout);
 for (i = 1; i <= 60; i++) {
  ret = set_tai(i);
  ret = get_tai();
  if (ret != i) {
   printf("[FAILED] expected: %i got %i\n", i, ret);
   return ksft_exit_fail();
  }
 }
 printf("[OK]\n");
 return ksft_exit_pass();
}
