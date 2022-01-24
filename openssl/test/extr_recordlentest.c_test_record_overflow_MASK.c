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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SSL3_RT_APPLICATION_DATA ; 
 int /*<<< orphan*/  SSL3_RT_HANDSHAKE ; 
 scalar_t__ SSL3_RT_MAX_COMPRESSED_OVERHEAD ; 
 size_t SSL3_RT_MAX_ENCRYPTED_LENGTH ; 
 size_t SSL3_RT_MAX_PLAIN_LENGTH ; 
 size_t SSL3_RT_MAX_TLS13_ENCRYPTED_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int TEST_ENCRYPTED_OVERFLOW_TLS1_2_NOT_OK ; 
 int TEST_ENCRYPTED_OVERFLOW_TLS1_2_OK ; 
 int TEST_ENCRYPTED_OVERFLOW_TLS1_3_NOT_OK ; 
 int TEST_ENCRYPTED_OVERFLOW_TLS1_3_OK ; 
 int TEST_PLAINTEXT_OVERFLOW_NOT_OK ; 
 int TEST_PLAINTEXT_OVERFLOW_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int TLS1_2_VERSION ; 
 int TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC18(int idx)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    size_t len = 0;
    size_t written;
    int overf_expected;
    unsigned char buf;
    BIO *serverbio;
    int recversion;

#ifdef OPENSSL_NO_TLS1_2
    if (idx == TEST_ENCRYPTED_OVERFLOW_TLS1_2_OK
            || idx == TEST_ENCRYPTED_OVERFLOW_TLS1_2_NOT_OK)
        return 1;
#endif
#ifdef OPENSSL_NO_TLS1_3
    if (idx == TEST_ENCRYPTED_OVERFLOW_TLS1_3_OK
            || idx == TEST_ENCRYPTED_OVERFLOW_TLS1_3_NOT_OK)
        return 1;
#endif

    FUNC0();

    if (!FUNC10(FUNC14(FUNC12(), FUNC11(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (idx == TEST_ENCRYPTED_OVERFLOW_TLS1_2_OK
            || idx == TEST_ENCRYPTED_OVERFLOW_TLS1_2_NOT_OK) {
        len = SSL3_RT_MAX_ENCRYPTED_LENGTH;
#ifndef OPENSSL_NO_COMP
        len -= SSL3_RT_MAX_COMPRESSED_OVERHEAD;
#endif
        FUNC2(sctx, TLS1_2_VERSION);
    } else if (idx == TEST_ENCRYPTED_OVERFLOW_TLS1_3_OK
               || idx == TEST_ENCRYPTED_OVERFLOW_TLS1_3_NOT_OK) {
        len = SSL3_RT_MAX_TLS13_ENCRYPTED_LENGTH;
    }

    if (!FUNC10(FUNC15(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL)))
        goto end;

    serverbio = FUNC5(serverssl);

    if (idx == TEST_PLAINTEXT_OVERFLOW_OK
            || idx == TEST_PLAINTEXT_OVERFLOW_NOT_OK) {
        len = SSL3_RT_MAX_PLAIN_LENGTH;

        if (idx == TEST_PLAINTEXT_OVERFLOW_NOT_OK)
            len++;

        if (!FUNC10(FUNC17(serverbio, len,
                                    SSL3_RT_HANDSHAKE, TLS1_VERSION)))
            goto end;

        if (!FUNC9(FUNC3(serverssl), 0))
            goto end;

        overf_expected = (idx == TEST_PLAINTEXT_OVERFLOW_OK) ? 0 : 1;
        if (!FUNC8(FUNC16(0), overf_expected))
            goto end;

        goto success;
    }

    if (!FUNC10(FUNC13(serverssl, clientssl,
                                         SSL_ERROR_NONE)))
        goto end;

    if (idx == TEST_ENCRYPTED_OVERFLOW_TLS1_2_NOT_OK
            || idx == TEST_ENCRYPTED_OVERFLOW_TLS1_3_NOT_OK) {
        overf_expected = 1;
        len++;
    } else {
        overf_expected = 0;
    }

    recversion = TLS1_2_VERSION;

    if (!FUNC10(FUNC17(serverbio, len, SSL3_RT_APPLICATION_DATA,
                                recversion)))
        goto end;

    if (!FUNC7(FUNC6(serverssl, &buf, sizeof(buf), &written)))
        goto end;

    if (!FUNC8(FUNC16(1), overf_expected))
        goto end;

 success:
    testresult = 1;

 end:
    FUNC4(serverssl);
    FUNC4(clientssl);
    FUNC1(sctx);
    FUNC1(cctx);
    return testresult;
}