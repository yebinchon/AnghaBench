
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KSFT_XFAIL ;
 int exit (int ) ;
 int ksft_print_cnts () ;

__attribute__((used)) static inline int ksft_exit_xfail(void)
{
 ksft_print_cnts();
 exit(KSFT_XFAIL);
}
