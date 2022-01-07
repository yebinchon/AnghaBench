
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int ADD_TEST (int ) ;
 int OSSL_NELEM (int ) ;
 int b64_pem_data ;
 int test_b64 ;
 int test_invalid ;

int setup_tests(void)
{
    ADD_ALL_TESTS(test_b64, OSSL_NELEM(b64_pem_data));
    ADD_TEST(test_invalid);
    return 1;
}
