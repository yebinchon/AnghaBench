
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int OSSL_NELEM (int ) ;
 int RC5_CBC_NUM ;
 int RC5key ;
 int test_rc5_cbc ;
 int test_rc5_ecb ;

int setup_tests(void)
{

    ADD_ALL_TESTS(test_rc5_ecb, OSSL_NELEM(RC5key));
    ADD_ALL_TESTS(test_rc5_cbc, RC5_CBC_NUM);

    return 1;
}
