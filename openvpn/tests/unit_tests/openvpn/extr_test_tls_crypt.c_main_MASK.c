#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct CMUnitTest {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*,struct CMUnitTest const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct CMUnitTest const FUNC3 (int /*<<< orphan*/ ) ; 
 struct CMUnitTest const FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_tls_crypt_setup ; 
 int /*<<< orphan*/  test_tls_crypt_teardown ; 
 int /*<<< orphan*/  test_tls_crypt_v2_setup ; 
 int /*<<< orphan*/  test_tls_crypt_v2_teardown ; 
 int /*<<< orphan*/  test_tls_crypt_v2_write_client_key_file ; 
 int /*<<< orphan*/  test_tls_crypt_v2_write_server_key_file ; 
 int /*<<< orphan*/  tls_crypt_fail_invalid_key ; 
 int /*<<< orphan*/  tls_crypt_fail_msg_too_long ; 
 int /*<<< orphan*/  tls_crypt_fail_replay ; 
 int /*<<< orphan*/  tls_crypt_ignore_replay ; 
 int /*<<< orphan*/  tls_crypt_loopback ; 
 int /*<<< orphan*/  tls_crypt_loopback_max_len ; 
 int /*<<< orphan*/  tls_crypt_loopback_zero_len ; 
 int /*<<< orphan*/  tls_crypt_v2_wrap_too_long_metadata ; 
 int /*<<< orphan*/  tls_crypt_v2_wrap_unwrap_dst_too_small ; 
 int /*<<< orphan*/  tls_crypt_v2_wrap_unwrap_max_metadata ; 
 int /*<<< orphan*/  tls_crypt_v2_wrap_unwrap_no_metadata ; 
 int /*<<< orphan*/  tls_crypt_v2_wrap_unwrap_wrong_key ; 

int
FUNC5(void) {
    const struct CMUnitTest tests[] = {
        FUNC4(tls_crypt_loopback,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        FUNC4(tls_crypt_loopback_zero_len,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        FUNC4(tls_crypt_loopback_max_len,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        FUNC4(tls_crypt_fail_msg_too_long,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        FUNC4(tls_crypt_fail_invalid_key,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        FUNC4(tls_crypt_fail_replay,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        FUNC4(tls_crypt_ignore_replay,
                                        test_tls_crypt_setup,
                                        test_tls_crypt_teardown),
        FUNC4(tls_crypt_v2_wrap_unwrap_no_metadata,
                                        test_tls_crypt_v2_setup,
                                        test_tls_crypt_v2_teardown),
        FUNC4(tls_crypt_v2_wrap_unwrap_max_metadata,
                                        test_tls_crypt_v2_setup,
                                        test_tls_crypt_v2_teardown),
        FUNC4(tls_crypt_v2_wrap_too_long_metadata,
                                        test_tls_crypt_v2_setup,
                                        test_tls_crypt_v2_teardown),
        FUNC4(tls_crypt_v2_wrap_unwrap_wrong_key,
                                        test_tls_crypt_v2_setup,
                                        test_tls_crypt_v2_teardown),
        FUNC4(tls_crypt_v2_wrap_unwrap_dst_too_small,
                                        test_tls_crypt_v2_setup,
                                        test_tls_crypt_v2_teardown),
        FUNC3(test_tls_crypt_v2_write_server_key_file),
        FUNC3(test_tls_crypt_v2_write_client_key_file),
    };

#if defined(ENABLE_CRYPTO_OPENSSL)
    OpenSSL_add_all_algorithms();
#endif

    int ret = FUNC2("tls-crypt tests", tests, NULL, NULL);

#if defined(ENABLE_CRYPTO_OPENSSL)
    EVP_cleanup();
#endif

    return ret;
}