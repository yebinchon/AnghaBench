
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int badkeylen_test ;
 int ivgen_test ;
 int kat_test ;

int setup_tests(void)
{
    ADD_TEST(kat_test);
    ADD_TEST(badkeylen_test);



    return 1;
}
