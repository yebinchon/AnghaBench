
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE ;
 int CONSTTIME_TRUE ;
 int TEST_uint_eq (int ,unsigned int) ;
 int constant_time_select (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int test_select(unsigned int a, unsigned int b)
{
    if (!TEST_uint_eq(constant_time_select(CONSTTIME_TRUE, a, b), a))
        return 0;
    if (!TEST_uint_eq(constant_time_select(CONSTTIME_FALSE, a, b), b))
        return 0;
    return 1;
}
