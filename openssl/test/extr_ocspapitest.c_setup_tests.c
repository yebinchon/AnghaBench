
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int TEST_ptr (int ) ;
 int certstr ;
 int privkeystr ;
 int test_access_description ;
 int test_get_argument (int) ;
 int test_ocsp_url_svcloc_new ;
 int test_resp_signer ;

int setup_tests(void)
{
    if (!TEST_ptr(certstr = test_get_argument(0))
        || !TEST_ptr(privkeystr = test_get_argument(1)))
        return 0;

    ADD_TEST(test_resp_signer);
    ADD_ALL_TESTS(test_access_description, 3);
    ADD_TEST(test_ocsp_url_svcloc_new);

    return 1;
}
