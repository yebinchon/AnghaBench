
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE ;
 int CONSTTIME_TRUE ;
 int TEST_uint_eq (int ,int ) ;
 int constant_time_eq_int (int,int) ;

__attribute__((used)) static int test_eq_int(int a, int b)
{
    if (a == b && !TEST_uint_eq(constant_time_eq_int(a, b), CONSTTIME_TRUE))
        return 0;
    if (a != b && !TEST_uint_eq(constant_time_eq_int(a, b), CONSTTIME_FALSE))
        return 0;
    return 1;
}
