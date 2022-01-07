
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_default_cipherlist_clear ;
 int test_default_cipherlist_explicit ;
 int test_default_cipherlist_implicit ;

int setup_tests(void)
{
    ADD_TEST(test_default_cipherlist_implicit);
    ADD_TEST(test_default_cipherlist_explicit);
    ADD_TEST(test_default_cipherlist_clear);
    return 1;
}
