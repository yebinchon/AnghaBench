
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 scalar_t__ validate_freq () ;
 scalar_t__ validate_set_offset () ;

int main(int argc, char **argv)
{
 if (validate_freq())
  return ksft_exit_fail();

 if (validate_set_offset())
  return ksft_exit_fail();

 return ksft_exit_pass();
}
