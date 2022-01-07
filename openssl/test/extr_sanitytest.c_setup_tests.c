
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_sanity_enum_size ;
 int test_sanity_memcmp ;
 int test_sanity_null_zero ;
 int test_sanity_range ;
 int test_sanity_sign ;
 int test_sanity_twos_complement ;
 int test_sanity_unsigned_conversion ;

int setup_tests(void)
{
    ADD_TEST(test_sanity_null_zero);
    ADD_TEST(test_sanity_enum_size);
    ADD_TEST(test_sanity_twos_complement);
    ADD_TEST(test_sanity_sign);
    ADD_TEST(test_sanity_unsigned_conversion);
    ADD_TEST(test_sanity_range);
    ADD_TEST(test_sanity_memcmp);
    return 1;
}
