
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST (int,int ) ;
 int TEST_long_eq (long,long) ;
 int TEST_long_ge (long,long) ;
 int TEST_long_gt (long,long) ;
 int TEST_long_le (long,long) ;
 int TEST_long_lt (long,long) ;
 int TEST_long_ne (long,long) ;

__attribute__((used)) static int test_long(void)
{
    if (!TEST(1, TEST_long_eq(123l, 123l))
        | !TEST(0, TEST_long_eq(123l, -123l))
        | !TEST(1, TEST_long_ne(123l, 500l))
        | !TEST(0, TEST_long_ne(1000l, 1000l))
        | !TEST(1, TEST_long_lt(-8923l, 102934563l))
        | !TEST(0, TEST_long_lt(102934563l, -8923l))
        | !TEST(1, TEST_long_le(-8923l, 102934563l))
        | !TEST(1, TEST_long_le(12345l, 12345l))
        | !TEST(0, TEST_long_le(102934563l, -8923l))
        | !TEST(1, TEST_long_gt(84325677l, 12345l))
        | !TEST(0, TEST_long_gt(12345l, 84325677l))
        | !TEST(1, TEST_long_ge(84325677l, 12345l))
        | !TEST(1, TEST_long_ge(465869l, 465869l))
        | !TEST(0, TEST_long_ge(12345l, 84325677l)))
        goto err;
    return 1;

err:
    return 0;
}
