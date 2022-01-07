
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int TEST_ptr (int ) ;
 int c ;
 int e ;
 int k ;
 int t ;
 int test_get_argument (int) ;
 int test_x509_check_cert_pkey ;

int setup_tests(void)
{
    if (!TEST_ptr(c = test_get_argument(0))
            || !TEST_ptr(k = test_get_argument(1))
            || !TEST_ptr(t = test_get_argument(2))
            || !TEST_ptr(e = test_get_argument(3))) {
        return 0;
    }

    ADD_TEST(test_x509_check_cert_pkey);
    return 1;
}
