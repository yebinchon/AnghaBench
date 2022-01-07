
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE_8 ;
 int CONSTTIME_TRUE_8 ;
 int TEST_uint_eq (int ,unsigned char) ;
 int constant_time_select_8 (int ,unsigned char,unsigned char) ;

__attribute__((used)) static int test_select_8(unsigned char a, unsigned char b)
{
    if (!TEST_uint_eq(constant_time_select_8(CONSTTIME_TRUE_8, a, b), a))
        return 0;
    if (!TEST_uint_eq(constant_time_select_8(CONSTTIME_FALSE_8, a, b), b))
        return 0;
    return 1;
}
