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
typedef  int /*<<< orphan*/  testdata ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 size_t MAX_ATTEMPTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int SSL_ERROR_SSL ; 
 int SSL_ERROR_SYSCALL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int fragment ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC18(int test)
{
    SSL_CTX *serverctx = NULL, *clientctx = NULL;
    SSL *serverssl = NULL, *clientssl = NULL;
    BIO *s_to_c_fbio = NULL, *c_to_s_fbio = NULL;
    int testresult = 0, ret;
    size_t i, j;
    const char testdata[] = "Test data";
    char buf[sizeof(testdata)];

    if (!FUNC11(FUNC16(FUNC13(), FUNC12(),
                                       TLS1_VERSION, 0,
                                       &serverctx, &clientctx, cert, privkey)))
        goto end;

    /*
     * We do 2 test runs. The first time around we just do a normal handshake
     * with lots of async io going on. The second time around we also break up
     * all records so that the content is only one byte length (up until the
     * CCS)
     */
    if (test == 1)
        fragment = 1;


    s_to_c_fbio = FUNC1(FUNC14());
    c_to_s_fbio = FUNC1(FUNC14());
    if (!FUNC9(s_to_c_fbio)
            || !FUNC9(c_to_s_fbio)) {
        FUNC0(s_to_c_fbio);
        FUNC0(c_to_s_fbio);
        goto end;
    }

    /* BIOs get freed on error */
    if (!FUNC11(FUNC17(serverctx, clientctx, &serverssl,
                                      &clientssl, s_to_c_fbio, c_to_s_fbio))
            || !FUNC11(FUNC15(serverssl, clientssl,
                          SSL_ERROR_NONE)))
        goto end;

    /*
     * Send and receive some test data. Do the whole thing twice to ensure
     * we hit at least one async event in both reading and writing
     */
    for (j = 0; j < 2; j++) {
        int len;

        /*
         * Write some test data. It should never take more than 2 attempts
         * (the first one might be a retryable fail).
         */
        for (ret = -1, i = 0, len = 0; len != sizeof(testdata) && i < 2;
            i++) {
            ret = FUNC6(clientssl, testdata + len,
                sizeof(testdata) - len);
            if (ret > 0) {
                len += ret;
            } else {
                int ssl_error = FUNC4(clientssl, ret);

                if (!FUNC7(ssl_error == SSL_ERROR_SYSCALL ||
                                ssl_error == SSL_ERROR_SSL))
                    goto end;
            }
        }
        if (!FUNC10(len, sizeof(testdata)))
            goto end;

        /*
         * Now read the test data. It may take more attempts here because
         * it could fail once for each byte read, including all overhead
         * bytes from the record header/padding etc.
         */
        for (ret = -1, i = 0, len = 0; len != sizeof(testdata) &&
                i < MAX_ATTEMPTS; i++) {
            ret = FUNC5(serverssl, buf + len, sizeof(buf) - len);
            if (ret > 0) {
                len += ret;
            } else {
                int ssl_error = FUNC4(serverssl, ret);

                if (!FUNC7(ssl_error == SSL_ERROR_SYSCALL ||
                                ssl_error == SSL_ERROR_SSL))
                    goto end;
            }
        }
        if (!FUNC8(testdata, sizeof(testdata), buf, len))
            goto end;
    }

    /* Also frees the BIOs */
    FUNC3(clientssl);
    FUNC3(serverssl);
    clientssl = serverssl = NULL;

    testresult = 1;

 end:
    FUNC3(clientssl);
    FUNC3(serverssl);
    FUNC2(clientctx);
    FUNC2(serverctx);

    return testresult;
}