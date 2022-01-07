
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE_8 ;
 int CONSTTIME_TRUE_8 ;
 int TEST_int_eq (int ,int ) ;
 int constant_time_eq_int_8 (int,int) ;

__attribute__((used)) static int test_eq_int_8(int a, int b)
{
    if (a == b && !TEST_int_eq(constant_time_eq_int_8(a, b), CONSTTIME_TRUE_8))
        return 0;
    if (a != b && !TEST_int_eq(constant_time_eq_int_8(a, b), CONSTTIME_FALSE_8))
        return 0;
    return 1;
}
