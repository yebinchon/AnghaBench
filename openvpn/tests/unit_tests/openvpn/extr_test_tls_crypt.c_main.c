
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CMUnitTest {int dummy; } ;


 int EVP_cleanup () ;
 int OpenSSL_add_all_algorithms () ;
 int cmocka_run_group_tests_name (char*,struct CMUnitTest const*,int *,int *) ;
 struct CMUnitTest const cmocka_unit_test (int ) ;
 struct CMUnitTest const cmocka_unit_test_setup_teardown (int ,int ,int ) ;
 int test_tls_crypt_setup ;
 int test_tls_crypt_teardown ;
 int test_tls_crypt_v2_setup ;
 int test_tls_crypt_v2_teardown ;
 int test_tls_crypt_v2_write_client_key_file ;
 int test_tls_crypt_v2_write_server_key_file ;
 int tls_crypt_fail_invalid_key ;
 int tls_crypt_fail_msg_too_long ;
 int tls_crypt_fail_replay ;
 int tls_crypt_ignore_replay ;
 int tls_crypt_loopback ;
 int tls_crypt_loopback_max_len ;
 int tls_crypt_loopback_zero_len ;
 int tls_crypt_v2_wrap_too_long_metadata ;
 int tls_crypt_v2_wrap_unwrap_dst_too_small ;
 int tls_crypt_v2_wrap_unwrap_max_metadata ;
 int tls_crypt_v2_wrap_unwrap_no_metadata ;
 int tls_crypt_v2_wrap_unwrap_wrong_key ;

int
main(void) {
    const struct CMUnitTest tests[] = {
        cmocka_unit_test_setup_teardown(tls_crypt_loopback,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        cmocka_unit_test_setup_teardown(tls_crypt_loopback_zero_len,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        cmocka_unit_test_setup_teardown(tls_crypt_loopback_max_len,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        cmocka_unit_test_setup_teardown(tls_crypt_fail_msg_too_long,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        cmocka_unit_test_setup_teardown(tls_crypt_fail_invalid_key,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        cmocka_unit_test_setup_teardown(tls_crypt_fail_replay,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        cmocka_unit_test_setup_teardown(tls_crypt_ignore_replay,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        cmocka_unit_test_setup_teardown(tls_crypt_v2_wrap_unwrap_no_metadata,
                                        test_tls_crypt_v2_setup,
                                        test_tls_crypt_v2_teardown),
        cmocka_unit_test_setup_teardown(tls_crypt_v2_wrap_unwrap_max_metadata,
                                        test_tls_crypt_v2_setup,
                                        test_tls_crypt_v2_teardown),
        cmocka_unit_test_setup_teardown(tls_crypt_v2_wrap_too_long_metadata,
                                        test_tls_crypt_v2_setup,
                                        test_tls_crypt_v2_teardown),
        cmocka_unit_test_setup_teardown(tls_crypt_v2_wrap_unwrap_wrong_key,
                                        test_tls_crypt_v2_setup,
                                        test_tls_crypt_v2_teardown),
        cmocka_unit_test_setup_teardown(tls_crypt_v2_wrap_unwrap_dst_too_small,
                                        test_tls_crypt_v2_setup,
                                        test_tls_crypt_v2_teardown),
        cmocka_unit_test(test_tls_crypt_v2_write_server_key_file),
        cmocka_unit_test(test_tls_crypt_v2_write_client_key_file),
    };





    int ret = cmocka_run_group_tests_name("tls-crypt tests", tests, ((void*)0), ((void*)0));





    return ret;
}
