
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int OSSL_NELEM (int ) ;
 int bn_output_tests ;
 int test_bignum ;
 int test_bn_output ;
 int test_bool ;
 int test_char ;
 int test_int ;
 int test_long ;
 int test_long_bignum ;
 int test_long_output ;
 int test_memory ;
 int test_memory_overflow ;
 int test_messages ;
 int test_output ;
 int test_pointer ;
 int test_single_eval ;
 int test_size_t ;
 int test_skip_many ;
 int test_skip_null ;
 int test_skip_one ;
 int test_string ;
 int test_time_t ;
 int test_uchar ;
 int test_uint ;
 int test_ulong ;

int setup_tests(void)
{
    ADD_TEST(test_int);
    ADD_TEST(test_uint);
    ADD_TEST(test_char);
    ADD_TEST(test_uchar);
    ADD_TEST(test_long);
    ADD_TEST(test_ulong);
    ADD_TEST(test_size_t);
    ADD_TEST(test_time_t);
    ADD_TEST(test_pointer);
    ADD_TEST(test_bool);
    ADD_TEST(test_string);
    ADD_TEST(test_memory);
    ADD_TEST(test_memory_overflow);
    ADD_TEST(test_bignum);
    ADD_TEST(test_long_bignum);
    ADD_TEST(test_long_output);
    ADD_TEST(test_messages);
    ADD_TEST(test_single_eval);
    ADD_TEST(test_output);
    ADD_ALL_TESTS(test_bn_output, OSSL_NELEM(bn_output_tests));
    ADD_TEST(test_skip_one);
    ADD_TEST(test_skip_null);
    ADD_ALL_TESTS(test_skip_many, 3);
    return 1;
}
