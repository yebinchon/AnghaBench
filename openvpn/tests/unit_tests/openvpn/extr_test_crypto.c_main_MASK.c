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
 int /*<<< orphan*/  crypto_pem_encode_decode_loopback ; 

int
FUNC4(void) {
    const struct CMUnitTest tests[] = {
        FUNC3(crypto_pem_encode_decode_loopback),
    };

#if defined(ENABLE_CRYPTO_OPENSSL)
    OpenSSL_add_all_algorithms();
#endif

    int ret = FUNC2("crypto tests", tests, NULL, NULL);

#if defined(ENABLE_CRYPTO_OPENSSL)
    EVP_cleanup();
#endif

    return ret;
}