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
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  DTLS1_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC17(int tst)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    char msg[] = "A test message";
    char buf[5];
    size_t written, readbytes;

    if (tst == 0) {
        if (!FUNC11(FUNC15(FUNC13(),
                                           FUNC12(),
                                           TLS1_VERSION, 0,
                                           &sctx, &cctx, cert, privkey)))
            goto end;
    } else {
#ifndef OPENSSL_NO_DTLS
        if (!FUNC11(FUNC15(FUNC1(),
                                           FUNC0(),
                                           DTLS1_VERSION, 0,
                                           &sctx, &cctx, cert, privkey)))
            goto end;
#else
        return 1;
#endif
    }

    if (!FUNC11(FUNC16(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL))
            || !FUNC11(FUNC14(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    if (!FUNC9(FUNC5(clientssl), 0)
            || !FUNC8(FUNC4(clientssl))
            || !FUNC9(FUNC5(serverssl), 0)
            || !FUNC8(FUNC4(serverssl))
            || !FUNC11(FUNC7(serverssl, msg, sizeof(msg), &written))
            || !FUNC10(written, sizeof(msg))
            || !FUNC11(FUNC6(clientssl, buf, sizeof(buf), &readbytes))
            || !FUNC10(readbytes, sizeof(buf))
            || !FUNC9(FUNC5(clientssl), (int)(written - readbytes))
            || !FUNC11(FUNC4(clientssl)))
        goto end;

    testresult = 1;

 end:
    FUNC3(serverssl);
    FUNC3(clientssl);
    FUNC2(sctx);
    FUNC2(cctx);

    return testresult;
}