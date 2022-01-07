
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_app_context ;
 int test_def_context ;

int setup_tests(void)
{
    ADD_TEST(test_app_context);
    ADD_TEST(test_def_context);
    return 1;
}
