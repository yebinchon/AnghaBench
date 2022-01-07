
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INT_MAX ;
 int INT_MIN ;
 int LONG_MAX ;
 int LONG_MIN ;
 int TEST_int_eq (int,int ) ;
 int TEST_long_eq (int,int ) ;

__attribute__((used)) static int test_sanity_sign(void)
{

    if (!TEST_int_eq(-(INT_MIN + 1), INT_MAX)
        || !TEST_long_eq(-(LONG_MIN + 1), LONG_MAX))
        return 0;
    return 1;
}
