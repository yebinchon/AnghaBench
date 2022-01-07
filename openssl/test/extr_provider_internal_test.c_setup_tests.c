
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_builtin_provider ;
 int test_configured_provider ;
 int test_loaded_provider ;

int setup_tests(void)
{
    ADD_TEST(test_builtin_provider);

    ADD_TEST(test_loaded_provider);
    ADD_TEST(test_configured_provider);

    return 1;
}
