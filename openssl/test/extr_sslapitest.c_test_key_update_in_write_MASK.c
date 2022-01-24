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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int SSL_ERROR_WANT_READ ; 
 int SSL_ERROR_WANT_WRITE ; 
 int /*<<< orphan*/  SSL_KEY_UPDATE_REQUESTED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_3_VERSION ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 
 int FUNC21 (char*) ; 

__attribute__((used)) static int FUNC22(int tst)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    char buf[20];
    static char *mess = "A test message";
    BIO *bretry = FUNC1(FUNC17());
    BIO *tmp = NULL;
    SSL *peerupdate = NULL, *peerwrite = NULL;

    if (!FUNC13(bretry)
            || !FUNC14(FUNC19(FUNC16(),
                                              FUNC15(),
                                              TLS1_3_VERSION,
                                              0,
                                              &sctx, &cctx, cert, privkey))
            || !FUNC14(FUNC20(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL))
            || !FUNC14(FUNC18(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    peerupdate = tst == 0 ? clientssl : serverssl;
    peerwrite = tst == 0 ? serverssl : clientssl;

    if (!FUNC14(FUNC8(peerupdate, SSL_KEY_UPDATE_REQUESTED))
            || !FUNC14(FUNC4(peerupdate)))
        goto end;

    /* Swap the writing endpoint's write BIO to force a retry */
    tmp = FUNC7(peerwrite);
    if (!FUNC13(tmp) || !FUNC14(FUNC2(tmp))) {
        tmp = NULL;
        goto end;
    }
    FUNC10(peerwrite, bretry);
    bretry = NULL;

    /* Write data that we know will fail with SSL_ERROR_WANT_WRITE */
    if (!FUNC12(FUNC11(peerwrite, mess, FUNC21(mess)), -1)
            || !FUNC12(FUNC6(peerwrite, 0), SSL_ERROR_WANT_WRITE))
        goto end;

    /* Reinstate the original writing endpoint's write BIO */
    FUNC10(peerwrite, tmp);
    tmp = NULL;

    /* Now read some data - we will read the key update */
    if (!FUNC12(FUNC9(peerwrite, buf, sizeof(buf)), -1)
            || !FUNC12(FUNC6(peerwrite, 0), SSL_ERROR_WANT_READ))
        goto end;

    /*
     * Complete the write we started previously and read it from the other
     * endpoint
     */
    if (!FUNC12(FUNC11(peerwrite, mess, FUNC21(mess)), FUNC21(mess))
            || !FUNC12(FUNC9(peerupdate, buf, sizeof(buf)), FUNC21(mess)))
        goto end;

    /* Write more data to ensure we send the KeyUpdate message back */
    if (!FUNC12(FUNC11(peerwrite, mess, FUNC21(mess)), FUNC21(mess))
            || !FUNC12(FUNC9(peerupdate, buf, sizeof(buf)), FUNC21(mess)))
        goto end;

    testresult = 1;

 end:
    FUNC5(serverssl);
    FUNC5(clientssl);
    FUNC3(sctx);
    FUNC3(cctx);
    FUNC0(bretry);
    FUNC0(tmp);

    return testresult;
}