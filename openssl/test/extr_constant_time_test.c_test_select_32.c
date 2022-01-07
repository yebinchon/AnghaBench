
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int CONSTTIME_FALSE_32 ;
 int CONSTTIME_TRUE_32 ;
 int TEST_true (int) ;
 scalar_t__ constant_time_select_32 (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static int test_select_32(uint32_t a, uint32_t b)
{
    if (!TEST_true(constant_time_select_32(CONSTTIME_TRUE_32, a, b) == a))
        return 0;
    if (!TEST_true(constant_time_select_32(CONSTTIME_FALSE_32, a, b) == b))
        return 0;
    return 1;
}
