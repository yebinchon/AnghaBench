
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_ALL_TESTS (int ,int) ;
 int ADD_TEST (int ) ;
 int test_hmac_bad ;
 int test_hmac_copy ;
 int test_hmac_md5 ;
 int test_hmac_run ;
 int test_hmac_single_shot ;

int setup_tests(void)
{
    ADD_ALL_TESTS(test_hmac_md5, 4);
    ADD_TEST(test_hmac_single_shot);
    ADD_TEST(test_hmac_bad);
    ADD_TEST(test_hmac_run);
    ADD_TEST(test_hmac_copy);
    return 1;
}
