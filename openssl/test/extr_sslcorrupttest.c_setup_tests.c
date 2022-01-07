
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int TEST_ptr (int ) ;
 int cert ;
 int privkey ;
 int setup_cipher_list () ;
 int test_get_argument (int) ;
 int test_ssl_corrupt ;

int setup_tests(void)
{
    int n;

    if (!TEST_ptr(cert = test_get_argument(0))
            || !TEST_ptr(privkey = test_get_argument(1)))
        return 0;

    n = setup_cipher_list();
    if (n > 0)
        ADD_ALL_TESTS(test_ssl_corrupt, n);
    return 1;
}
