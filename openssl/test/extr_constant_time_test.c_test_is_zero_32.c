
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ CONSTTIME_FALSE_32 ;
 scalar_t__ CONSTTIME_TRUE_32 ;
 int TEST_true (int) ;
 scalar_t__ constant_time_is_zero_32 (scalar_t__) ;
 scalar_t__* test_values_32 ;

__attribute__((used)) static int test_is_zero_32(int i)
{
    uint32_t a = test_values_32[i];

    if (a == 0 && !TEST_true(constant_time_is_zero_32(a) == CONSTTIME_TRUE_32))
        return 0;
    if (a != 0 && !TEST_true(constant_time_is_zero_32(a) == CONSTTIME_FALSE_32))
        return 0;
    return 1;
}
