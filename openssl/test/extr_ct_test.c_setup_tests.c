
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_TEST (int ) ;
 char* certs_dir ;
 char* ct_dir ;
 void* getenv (char*) ;
 int printf (char*) ;
 int test_ctlog_from_base64 ;
 int test_decode_tls_sct ;
 int test_default_ct_policy_eval_ctx_time_is_now ;
 int test_encode_tls_sct ;
 int test_multiple_scts_in_certificate ;
 int test_no_scts_in_certificate ;
 int test_one_sct_in_certificate ;
 int test_verify_fails_for_future_sct ;
 int test_verify_multiple_scts ;
 int test_verify_one_sct ;

int setup_tests(void)
{

    if ((ct_dir = getenv("CT_DIR")) == ((void*)0))
        ct_dir = "ct";
    if ((certs_dir = getenv("CERTS_DIR")) == ((void*)0))
        certs_dir = "certs";

    ADD_TEST(test_no_scts_in_certificate);
    ADD_TEST(test_one_sct_in_certificate);
    ADD_TEST(test_multiple_scts_in_certificate);
    ADD_TEST(test_verify_one_sct);
    ADD_TEST(test_verify_multiple_scts);
    ADD_TEST(test_verify_fails_for_future_sct);
    ADD_TEST(test_decode_tls_sct);
    ADD_TEST(test_encode_tls_sct);
    ADD_TEST(test_default_ct_policy_eval_ctx_time_is_now);
    ADD_TEST(test_ctlog_from_base64);



    return 1;
}
