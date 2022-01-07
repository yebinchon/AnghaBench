
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int test_asn1_meths ;
 int test_pkey_meths ;

int setup_tests(void)
{
    ADD_TEST(test_asn1_meths);
    ADD_TEST(test_pkey_meths);
    return 1;
}
