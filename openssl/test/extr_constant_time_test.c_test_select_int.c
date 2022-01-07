
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTTIME_FALSE ;
 int CONSTTIME_TRUE ;
 int TEST_int_eq (int ,int) ;
 int constant_time_select_int (int ,int,int) ;

__attribute__((used)) static int test_select_int(int a, int b)
{
    if (!TEST_int_eq(constant_time_select_int(CONSTTIME_TRUE, a, b), a))
        return 0;
    if (!TEST_int_eq(constant_time_select_int(CONSTTIME_FALSE, a, b), b))
        return 0;
    return 1;
}
