
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_sec_mem ;
 int test_sec_mem_clear ;

int setup_tests(void)
{
    ADD_TEST(test_sec_mem);
    ADD_TEST(test_sec_mem_clear);
    return 1;
}
