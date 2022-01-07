
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int run_mtu_tests ;

int setup_tests(void)
{
    ADD_TEST(run_mtu_tests);
    return 1;
}
