
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INT_MAX ;
 int INT_MIN ;
 scalar_t__ LONG_MAX ;
 int LONG_MIN ;
 int TEST_int_eq (int,int ) ;
 int TEST_long_eq (long,int ) ;

__attribute__((used)) static int test_sanity_unsigned_conversion(void)
{

    if (!TEST_int_eq((int)((unsigned int)INT_MAX + 1), INT_MIN)
        || !TEST_long_eq((long)((unsigned long)LONG_MAX + 1), LONG_MIN))
        return 0;
    return 1;
}
