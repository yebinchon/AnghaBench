
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST (int,int ) ;
 int TEST_false (int) ;
 int TEST_true (int) ;

__attribute__((used)) static int test_bool(void)
{
    if (!TEST(0, TEST_true(0))
        | !TEST(1, TEST_true(1))
        | !TEST(1, TEST_false(0))
        | !TEST(0, TEST_false(1)))
        goto err;
    return 1;

err:
    return 0;
}
