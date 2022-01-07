
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int OSSL_NELEM (int ) ;
 int test ;
 int test_md2 ;

int setup_tests(void)
{

    ADD_ALL_TESTS(test_md2, OSSL_NELEM(test));

    return 1;
}
