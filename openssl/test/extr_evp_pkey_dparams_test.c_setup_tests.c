
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int OSSL_NELEM (int ) ;
 int TEST_note (char*) ;
 int params_bio_test ;
 int pkey_params ;

int setup_tests(void)
{



    ADD_ALL_TESTS(params_bio_test, OSSL_NELEM(pkey_params));

    return 1;
}
