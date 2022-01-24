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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MAX_ATTEMPTS ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int SSL_ERROR_SSL ; 
 int SSL_ERROR_SYSCALL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clientctx ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  serverctx ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC13(int test)
{
    int result = 0;
    SSL *serverssl = NULL, *clientssl = NULL;
    int ret;
    size_t i, j;
    const char testdata[] = "Test data";
    char buf[sizeof(testdata)];

    if (!FUNC10(FUNC12(serverctx, clientctx, &serverssl, &clientssl,
                                      NULL, NULL))) {
        FUNC7("Test %d failed: Create SSL objects failed\n", test);
        goto end;
    }

    if (!FUNC10(FUNC11(serverssl, clientssl, SSL_ERROR_NONE))) {
        FUNC7("Test %d failed: Create SSL connection failed\n", test);
        goto end;
    }

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
            /* test == 0 mean to free/allocate = control */
            if (test >= 1 && !FUNC10(FUNC3(clientssl)))
                goto end;
            if (test >= 2 && !FUNC10(FUNC1(clientssl)))
                goto end;
            /* allocate a second time */
            if (test >= 3 && !FUNC10(FUNC1(clientssl)))
                goto end;
            if (test >= 4 && !FUNC10(FUNC3(clientssl)))
                goto end;

            ret = FUNC6(clientssl, testdata + len,
                            sizeof(testdata) - len);
            if (ret > 0) {
                len += ret;
            } else {
                int ssl_error = FUNC4(clientssl, ret);

                if (ssl_error == SSL_ERROR_SYSCALL ||
                    ssl_error == SSL_ERROR_SSL) {
                    FUNC7("Test %d failed: Failed to write app data\n", test);
                    goto end;
                }
            }
        }
        if (!FUNC9(len, sizeof(testdata)))
            goto end;
        /*
         * Now read the test data. It may take more attempts here because
         * it could fail once for each byte read, including all overhead
         * bytes from the record header/padding etc.
         */
        for (ret = -1, i = 0, len = 0; len != sizeof(testdata) &&
                 i < MAX_ATTEMPTS; i++)
        {
            if (test >= 5 && !FUNC10(FUNC3(serverssl)))
                goto end;
            /* free a second time */
            if (test >= 6 && !FUNC10(FUNC3(serverssl)))
                goto end;
            if (test >= 7 && !FUNC10(FUNC1(serverssl)))
                goto end;
            if (test >= 8 && !FUNC10(FUNC3(serverssl)))
                goto end;

            ret = FUNC5(serverssl, buf + len, sizeof(buf) - len);
            if (ret > 0) {
                len += ret;
            } else {
                int ssl_error = FUNC4(serverssl, ret);

                if (ssl_error == SSL_ERROR_SYSCALL ||
                    ssl_error == SSL_ERROR_SSL) {
                    FUNC7("Test %d failed: Failed to read app data\n", test);
                    goto end;
                }
            }
        }
        if (!FUNC8(buf, len, testdata, sizeof(testdata)))
            goto end;
    }

    result = 1;
 end:
    if (!result)
        FUNC0(stderr);

    FUNC2(clientssl);
    FUNC2(serverssl);

    return result;
}