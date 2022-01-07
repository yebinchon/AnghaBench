
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int ) ;
 int ADD_TEST (int ) ;
 int NUM_TESTS ;
 int TEST_ptr (int ) ;
 int TOTAL_RECORDS ;
 int cert ;
 int privkey ;
 int test_cookie ;
 int test_dtls_drop_records ;
 int test_dtls_duplicate_records ;
 int test_dtls_unprocessed ;
 int test_get_argument (int) ;

int setup_tests(void)
{
    if (!TEST_ptr(cert = test_get_argument(0))
            || !TEST_ptr(privkey = test_get_argument(1)))
        return 0;

    ADD_ALL_TESTS(test_dtls_unprocessed, NUM_TESTS);
    ADD_ALL_TESTS(test_dtls_drop_records, TOTAL_RECORDS);
    ADD_TEST(test_cookie);
    ADD_TEST(test_dtls_duplicate_records);

    return 1;
}
