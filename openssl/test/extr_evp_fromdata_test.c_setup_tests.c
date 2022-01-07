
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_fromdata_rsa ;

int setup_tests(void)
{
    ADD_TEST(test_fromdata_rsa);
    return 1;
}
