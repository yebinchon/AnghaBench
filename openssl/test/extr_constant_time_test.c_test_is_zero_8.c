
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE_8 ;
 int CONSTTIME_TRUE_8 ;
 int TEST_uint_eq (int ,int ) ;
 int constant_time_is_zero_8 (unsigned int) ;
 unsigned int* test_values_8 ;

__attribute__((used)) static int test_is_zero_8(int i)
{
    unsigned int a = test_values_8[i];

    if (a == 0 && !TEST_uint_eq(constant_time_is_zero_8(a), CONSTTIME_TRUE_8))
        return 0;
    if (a != 0 && !TEST_uint_eq(constant_time_is_zero_8(a), CONSTTIME_FALSE_8))
        return 0;
    return 1;
}
