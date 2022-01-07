
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int template_private_test ;
 int template_public_test ;
 int template_static_fail_test ;
 int template_static_params_test ;

int setup_tests(void)
{
    ADD_TEST(template_public_test);
    ADD_TEST(template_private_test);
    ADD_ALL_TESTS(template_static_params_test, 2);
    ADD_ALL_TESTS(template_static_fail_test, 2);
    return 1;
}
