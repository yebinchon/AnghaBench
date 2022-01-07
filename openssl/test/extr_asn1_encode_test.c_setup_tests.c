
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_int32 ;
 int test_int64 ;
 int test_long_32bit ;
 int test_long_64bit ;
 int test_uint32 ;
 int test_uint64 ;

int setup_tests(void)
{

    ADD_TEST(test_long_32bit);
    ADD_TEST(test_long_64bit);

    ADD_TEST(test_int32);
    ADD_TEST(test_uint32);
    ADD_TEST(test_int64);
    ADD_TEST(test_uint64);
    return 1;
}
