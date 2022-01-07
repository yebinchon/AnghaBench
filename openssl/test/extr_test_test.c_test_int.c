
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST (int,int ) ;
 int TEST_int_eq (int,int) ;
 int TEST_int_ge (int,int) ;
 int TEST_int_gt (int,int) ;
 int TEST_int_le (int,int) ;
 int TEST_int_lt (int,int) ;
 int TEST_int_ne (int,int) ;

__attribute__((used)) static int test_int(void)
{
    if (!TEST(1, TEST_int_eq(1, 1))
        | !TEST(0, TEST_int_eq(1, -1))
        | !TEST(1, TEST_int_ne(1, 2))
        | !TEST(0, TEST_int_ne(3, 3))
        | !TEST(1, TEST_int_lt(4, 9))
        | !TEST(0, TEST_int_lt(9, 4))
        | !TEST(1, TEST_int_le(4, 9))
        | !TEST(1, TEST_int_le(5, 5))
        | !TEST(0, TEST_int_le(9, 4))
        | !TEST(1, TEST_int_gt(8, 5))
        | !TEST(0, TEST_int_gt(5, 8))
        | !TEST(1, TEST_int_ge(8, 5))
        | !TEST(1, TEST_int_ge(6, 6))
        | !TEST(0, TEST_int_ge(5, 8)))
        goto err;
    return 1;

err:
    return 0;
}
