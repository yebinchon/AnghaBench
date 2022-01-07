
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE_S ;
 int CONSTTIME_TRUE_S ;
 int TEST_uint_eq (int ,size_t) ;
 int constant_time_select_s (int ,size_t,size_t) ;

__attribute__((used)) static int test_select_s(size_t a, size_t b)
{
    if (!TEST_uint_eq(constant_time_select_s(CONSTTIME_TRUE_S, a, b), a))
        return 0;
    if (!TEST_uint_eq(constant_time_select_s(CONSTTIME_FALSE_S, a, b), b))
        return 0;
    return 1;
}
