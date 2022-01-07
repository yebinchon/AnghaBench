
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int seed ;
 int subtest_level () ;
 int test_flush_stdout () ;
 int test_printf_stdout (char*,int ,char*,int) ;
 int test_random_seed (int) ;
 scalar_t__ time (int *) ;

__attribute__((used)) static void set_seed(int s)
{
    seed = s;
    if (seed <= 0)
        seed = (int)time(((void*)0));
    test_printf_stdout("%*s# RAND SEED %d\n", subtest_level(), "", seed);
    test_flush_stdout();
    test_random_seed(seed);
}
