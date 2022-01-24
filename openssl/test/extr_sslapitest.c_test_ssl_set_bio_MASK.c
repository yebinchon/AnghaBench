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
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int CONNTYPE_CONNECTION_FAIL ; 
 int CONNTYPE_CONNECTION_SUCCESS ; 
 int CONNTYPE_NO_CONNECTION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  TLS1_3_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int TOTAL_NO_CONN_SSL_SET_BIO_TESTS ; 
 int USE_BIO_1 ; 
 int USE_BIO_2 ; 
 int USE_DEFAULT ; 
 int /*<<< orphan*/  cert ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC17(int idx)
{
    SSL_CTX *sctx = NULL, *cctx = NULL;
    BIO *bio1 = NULL;
    BIO *bio2 = NULL;
    BIO *irbio = NULL, *iwbio = NULL, *nrbio = NULL, *nwbio = NULL;
    SSL *serverssl = NULL, *clientssl = NULL;
    int initrbio, initwbio, newrbio, newwbio, conntype;
    int testresult = 0;

    if (idx < TOTAL_NO_CONN_SSL_SET_BIO_TESTS) {
        initrbio = idx % 3;
        idx /= 3;
        initwbio = idx % 3;
        idx /= 3;
        newrbio = idx % 3;
        idx /= 3;
        newwbio = idx % 3;
        conntype = CONNTYPE_NO_CONNECTION;
    } else {
        idx -= TOTAL_NO_CONN_SSL_SET_BIO_TESTS;
        initrbio = initwbio = USE_DEFAULT;
        newrbio = idx % 2;
        idx /= 2;
        newwbio = idx % 2;
        idx /= 2;
        conntype = idx % 2;
    }

    if (!FUNC10(FUNC14(FUNC12(), FUNC11(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (conntype == CONNTYPE_CONNECTION_FAIL) {
        /*
         * We won't ever get here if either TLSv1.3 or TLSv1.2 is disabled
         * because we reduced the number of tests in the definition of
         * TOTAL_CONN_FAIL_SSL_SET_BIO_TESTS to avoid this scenario. By setting
         * mismatched protocol versions we will force a connection failure.
         */
        FUNC6(sctx, TLS1_3_VERSION);
        FUNC5(cctx, TLS1_2_VERSION);
    }

    if (!FUNC10(FUNC15(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL)))
        goto end;

    if (initrbio == USE_BIO_1
            || initwbio == USE_BIO_1
            || newrbio == USE_BIO_1
            || newwbio == USE_BIO_1) {
        if (!FUNC9(bio1 = FUNC1(FUNC2())))
            goto end;
    }

    if (initrbio == USE_BIO_2
            || initwbio == USE_BIO_2
            || newrbio == USE_BIO_2
            || newwbio == USE_BIO_2) {
        if (!FUNC9(bio2 = FUNC1(FUNC2())))
            goto end;
    }

    if (initrbio != USE_DEFAULT) {
        FUNC16(&irbio, bio1, bio2, initrbio);
        FUNC16(&iwbio, bio1, bio2, initwbio);
        FUNC8(clientssl, irbio, iwbio);

        /*
         * We want to maintain our own refs to these BIO, so do an up ref for
         * each BIO that will have ownership transferred in the SSL_set_bio()
         * call
         */
        if (irbio != NULL)
            FUNC3(irbio);
        if (iwbio != NULL && iwbio != irbio)
            FUNC3(iwbio);
    }

    if (conntype != CONNTYPE_NO_CONNECTION
            && !FUNC10(FUNC13(serverssl, clientssl,
                                                SSL_ERROR_NONE)
                          == (conntype == CONNTYPE_CONNECTION_SUCCESS)))
        goto end;

    FUNC16(&nrbio, bio1, bio2, newrbio);
    FUNC16(&nwbio, bio1, bio2, newwbio);

    /*
     * We will (maybe) transfer ownership again so do more up refs.
     * SSL_set_bio() has some really complicated ownership rules where BIOs have
     * already been set!
     */
    if (nrbio != NULL
            && nrbio != irbio
            && (nwbio != iwbio || nrbio != nwbio))
        FUNC3(nrbio);
    if (nwbio != NULL
            && nwbio != nrbio
            && (nwbio != iwbio || (nwbio == iwbio && irbio == iwbio)))
        FUNC3(nwbio);

    FUNC8(clientssl, nrbio, nwbio);

    testresult = 1;

 end:
    FUNC0(bio1);
    FUNC0(bio2);

    /*
     * This test is checking that the ref counting for SSL_set_bio is correct.
     * If we get here and we did too many frees then we will fail in the above
     * functions. If we haven't done enough then this will only be detected in
     * a crypto-mdebug build
     */
    FUNC7(serverssl);
    FUNC7(clientssl);
    FUNC4(sctx);
    FUNC4(cctx);
    return testresult;
}