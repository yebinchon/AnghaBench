
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_oom () ;
 int test_secure_funcs () ;
 int test_simple () ;

__attribute__((used)) static void run_tests()
{
    test_simple();
    test_secure_funcs();
    test_oom();
}
