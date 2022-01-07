
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int OSSL_NELEM (int ) ;
 int TEST_ptr (int ) ;
 int cert1 ;
 int cert2 ;
 int ciphers ;
 int privkey1 ;
 int privkey2 ;
 int test_get_argument (int) ;
 int test_tls13 ;

int setup_tests(void)
{
    if (!TEST_ptr(cert1 = test_get_argument(0))
            || !TEST_ptr(privkey1 = test_get_argument(1))
            || !TEST_ptr(cert2 = test_get_argument(2))
            || !TEST_ptr(privkey2 = test_get_argument(3)))
        return 0;

    ADD_ALL_TESTS(test_tls13, OSSL_NELEM(ciphers));
    return 1;
}
