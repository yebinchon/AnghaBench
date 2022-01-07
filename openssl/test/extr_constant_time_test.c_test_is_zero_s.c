
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE_S ;
 int CONSTTIME_TRUE_S ;
 int TEST_size_t_eq (int ,int ) ;
 int TEST_uint_eq (int ,int ) ;
 int constant_time_is_zero_s (size_t) ;
 size_t* test_values_s ;

__attribute__((used)) static int test_is_zero_s(int i)
{
    size_t a = test_values_s[i];

    if (a == 0 && !TEST_size_t_eq(constant_time_is_zero_s(a), CONSTTIME_TRUE_S))
        return 0;
    if (a != 0 && !TEST_uint_eq(constant_time_is_zero_s(a), CONSTTIME_FALSE_S))
        return 0;
    return 1;
}
