
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ksft_exit_pass () ;
 int ksft_print_header () ;
 int ksft_set_plan (int) ;
 int test_pidfd_wait_simple () ;
 int test_pidfd_wait_states () ;

int main(int argc, char **argv)
{
 ksft_print_header();
 ksft_set_plan(2);

 test_pidfd_wait_simple();
 test_pidfd_wait_states();

 return ksft_exit_pass();
}
