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
typedef  int /*<<< orphan*/  expected_ciphers ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 size_t FUNC1 (int const*) ; 
 int SSL_CLIENT_HELLO_ERROR ; 
 int SSL_CLIENT_HELLO_RETRY ; 
 int SSL_CLIENT_HELLO_SUCCESS ; 
 size_t FUNC2 (int /*<<< orphan*/ *,unsigned char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int**,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char const*,size_t,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(SSL *s, int *al, void *arg)
{
    int *ctr = arg;
    const unsigned char *p;
    int *exts;
    /* We only configure two ciphers, but the SCSV is added automatically. */
#ifdef OPENSSL_NO_EC
    const unsigned char expected_ciphers[] = {0x00, 0x9d, 0x00, 0xff};
#else
    const unsigned char expected_ciphers[] = {0x00, 0x9d, 0xc0,
                                              0x2c, 0x00, 0xff};
#endif
    const int expected_extensions[] = {
#ifndef OPENSSL_NO_EC
                                       11, 10,
#endif
                                       35, 22, 23, 13};
    size_t len;

    /* Make sure we can defer processing and get called back. */
    if ((*ctr)++ == 0)
        return SSL_CLIENT_HELLO_RETRY;

    len = FUNC2(s, &p);
    if (!FUNC6(p, len, expected_ciphers, sizeof(expected_ciphers))
            || !FUNC7(
                       FUNC3(s, &p), 1)
            || !FUNC5(*p, 0))
        return SSL_CLIENT_HELLO_ERROR;
    if (!FUNC4(s, &exts, &len))
        return SSL_CLIENT_HELLO_ERROR;
    if (len != FUNC1(expected_extensions) ||
        FUNC8(exts, expected_extensions, len * sizeof(*exts)) != 0) {
        FUNC9("ClientHello callback expected extensions mismatch\n");
        FUNC0(exts);
        return SSL_CLIENT_HELLO_ERROR;
    }
    FUNC0(exts);
    return SSL_CLIENT_HELLO_SUCCESS;
}