
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int TEST (int,int ) ;
 int TEST_time_t_eq (int ,int ) ;
 int TEST_time_t_ge (int ,int ) ;
 int TEST_time_t_gt (int ,int ) ;
 int TEST_time_t_le (int ,int ) ;
 int TEST_time_t_lt (int ,int ) ;
 int TEST_time_t_ne (int ,int ) ;

__attribute__((used)) static int test_time_t(void)
{
    if (!TEST(1, TEST_time_t_eq((time_t)10, (time_t)10))
        | !TEST(0, TEST_time_t_eq((time_t)10, (time_t)12))
        | !TEST(1, TEST_time_t_ne((time_t)10, (time_t)12))
        | !TEST(0, TEST_time_t_ne((time_t)24, (time_t)24))
        | !TEST(1, TEST_time_t_lt((time_t)30, (time_t)88))
        | !TEST(0, TEST_time_t_lt((time_t)88, (time_t)30))
        | !TEST(1, TEST_time_t_le((time_t)30, (time_t)88))
        | !TEST(1, TEST_time_t_le((time_t)33, (time_t)33))
        | !TEST(0, TEST_time_t_le((time_t)88, (time_t)30))
        | !TEST(1, TEST_time_t_gt((time_t)52, (time_t)33))
        | !TEST(0, TEST_time_t_gt((time_t)33, (time_t)52))
        | !TEST(1, TEST_time_t_ge((time_t)52, (time_t)33))
        | !TEST(1, TEST_time_t_ge((time_t)38, (time_t)38))
        | !TEST(0, TEST_time_t_ge((time_t)33, (time_t)52)))
        goto err;
    return 1;

err:
    return 0;
}
