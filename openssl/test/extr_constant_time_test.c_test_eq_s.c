
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE_S ;
 int CONSTTIME_TRUE_S ;
 int TEST_int_eq (int ,int ) ;
 int TEST_size_t_eq (int ,int ) ;
 int constant_time_eq_s (size_t,size_t) ;

__attribute__((used)) static int test_eq_s(size_t a, size_t b)
{
    if (a == b && !TEST_size_t_eq(constant_time_eq_s(a, b), CONSTTIME_TRUE_S))
        return 0;
    if (a != b && !TEST_int_eq(constant_time_eq_s(a, b), CONSTTIME_FALSE_S))
        return 0;
    return 1;
}
