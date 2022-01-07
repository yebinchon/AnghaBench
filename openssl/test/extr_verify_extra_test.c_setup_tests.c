
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 int TEST_ptr (int ) ;
 int bad_f ;
 int req_f ;
 int roots_f ;
 int test_alt_chains_cert_forgery ;
 int test_get_argument (int) ;
 int test_req_sm2_id ;
 int test_sm2_id ;
 int test_store_ctx ;
 int untrusted_f ;

int setup_tests(void)
{
    if (!TEST_ptr(roots_f = test_get_argument(0))
            || !TEST_ptr(untrusted_f = test_get_argument(1))
            || !TEST_ptr(bad_f = test_get_argument(2))
            || !TEST_ptr(req_f = test_get_argument(3)))
        return 0;

    ADD_TEST(test_alt_chains_cert_forgery);
    ADD_TEST(test_store_ctx);

    ADD_TEST(test_sm2_id);
    ADD_TEST(test_req_sm2_id);

    return 1;
}
