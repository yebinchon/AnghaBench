
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE ;
 int CONSTTIME_TRUE ;
 int TEST_uint_eq (int ,int ) ;
 int constant_time_is_zero (unsigned int) ;
 unsigned int* test_values ;

__attribute__((used)) static int test_is_zero(int i)
{
    unsigned int a = test_values[i];

    if (a == 0 && !TEST_uint_eq(constant_time_is_zero(a), CONSTTIME_TRUE))
        return 0;
    if (a != 0 && !TEST_uint_eq(constant_time_is_zero(a), CONSTTIME_FALSE))
        return 0;
    return 1;
}
