
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST (int,int ) ;
 int TEST_ulong_eq (unsigned long,unsigned long) ;
 int TEST_ulong_ge (unsigned long,unsigned long) ;
 int TEST_ulong_gt (unsigned long,unsigned long) ;
 int TEST_ulong_le (unsigned long,unsigned long) ;
 int TEST_ulong_lt (unsigned long,unsigned long) ;
 int TEST_ulong_ne (unsigned long,unsigned long) ;

__attribute__((used)) static int test_ulong(void)
{
    if (!TEST(1, TEST_ulong_eq(919ul, 919ul))
        | !TEST(0, TEST_ulong_eq(919ul, 10234ul))
        | !TEST(1, TEST_ulong_ne(8190ul, 66ul))
        | !TEST(0, TEST_ulong_ne(10555ul, 10555ul))
        | !TEST(1, TEST_ulong_lt(10234ul, 1000000ul))
        | !TEST(0, TEST_ulong_lt(1000000ul, 10234ul))
        | !TEST(1, TEST_ulong_le(10234ul, 1000000ul))
        | !TEST(1, TEST_ulong_le(100000ul, 100000ul))
        | !TEST(0, TEST_ulong_le(1000000ul, 10234ul))
        | !TEST(1, TEST_ulong_gt(100000000ul, 22ul))
        | !TEST(0, TEST_ulong_gt(22ul, 100000000ul))
        | !TEST(1, TEST_ulong_ge(100000000ul, 22ul))
        | !TEST(1, TEST_ulong_ge(10555ul, 10555ul))
        | !TEST(0, TEST_ulong_ge(22ul, 100000000ul)))
        goto err;
    return 1;

err:
    return 0;
}
