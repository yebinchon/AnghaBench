
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_int_eq (int,int ) ;
 int TEST_long_eq (long,long) ;

__attribute__((used)) static int test_sanity_twos_complement(void)
{

    if (!TEST_int_eq(~(-1), 0)
        || !TEST_long_eq(~(-1L), 0L))
        return 0;
    return 1;
}
