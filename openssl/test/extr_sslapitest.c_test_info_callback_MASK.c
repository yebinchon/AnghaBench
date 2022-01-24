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
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  MSG1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_EARLY_DATA_ACCEPTED ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_READ_EARLY_DATA_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,size_t,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int TLS1_2_VERSION ; 
 int TLS1_3_VERSION ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ info_cb_failed ; 
 int info_cb_offset ; 
 int info_cb_this_state ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sslapi_info_callback ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC24(int tst)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    SSL_SESSION *clntsess = NULL;
    int testresult = 0;
    int tlsvers;

    if (tst < 2) {
/* We need either ECDHE or DHE for the TLSv1.2 test to work */
#if !defined(OPENSSL_NO_TLS1_2) && (!defined(OPENSSL_NO_EC) \
                                    || !defined(OPENSSL_NO_DH))
        tlsvers = TLS1_2_VERSION;
#else
        return 1;
#endif
    } else {
#ifndef OPENSSL_NO_TLS1_3
        tlsvers = TLS1_3_VERSION;
#else
        return 1;
#endif
    }

    /* Reset globals */
    info_cb_failed = 0;
    info_cb_this_state = -1;
    info_cb_offset = tst;

#ifndef OPENSSL_NO_TLS1_3
    if (tst >= 4) {
        SSL_SESSION *sess = NULL;
        size_t written, readbytes;
        unsigned char buf[80];

        /* early_data tests */
        if (!FUNC16(FUNC22(&cctx, &sctx, &clientssl,
                                            &serverssl, &sess, 0)))
            goto end;

        /* We don't actually need this reference */
        FUNC2(sess);

        FUNC8((tst % 2) == 0 ? serverssl : clientssl,
                              sslapi_info_callback);

        /* Write and read some early data and then complete the connection */
        if (!FUNC16(FUNC11(clientssl, MSG1, FUNC23(MSG1),
                                            &written))
                || !FUNC15(written, FUNC23(MSG1))
                || !FUNC13(FUNC6(serverssl, buf,
                                                    sizeof(buf), &readbytes),
                                SSL_READ_EARLY_DATA_SUCCESS)
                || !FUNC14(MSG1, readbytes, buf, FUNC23(MSG1))
                || !FUNC13(FUNC5(serverssl),
                                SSL_EARLY_DATA_ACCEPTED)
                || !FUNC16(FUNC19(serverssl, clientssl,
                                                    SSL_ERROR_NONE))
                || !FUNC12(info_cb_failed))
            goto end;

        testresult = 1;
        goto end;
    }
#endif

    if (!FUNC16(FUNC20(FUNC18(),
                                       FUNC17(),
                                       tlsvers, tlsvers, &sctx, &cctx, cert,
                                       privkey)))
        goto end;

    /*
     * For even numbered tests we check the server callbacks. For odd numbers we
     * check the client.
     */
    FUNC1((tst % 2) == 0 ? sctx : cctx,
                              sslapi_info_callback);

    if (!FUNC16(FUNC21(sctx, cctx, &serverssl,
                                          &clientssl, NULL, NULL))
        || !FUNC16(FUNC19(serverssl, clientssl,
                                            SSL_ERROR_NONE))
        || !FUNC12(info_cb_failed))
    goto end;



    clntsess = FUNC4(clientssl);
    FUNC10(clientssl);
    FUNC10(serverssl);
    FUNC3(serverssl);
    FUNC3(clientssl);
    serverssl = clientssl = NULL;

    /* Now do a resumption */
    if (!FUNC16(FUNC21(sctx, cctx, &serverssl, &clientssl, NULL,
                                      NULL))
            || !FUNC16(FUNC9(clientssl, clntsess))
            || !FUNC16(FUNC19(serverssl, clientssl,
                                                SSL_ERROR_NONE))
            || !FUNC16(FUNC7(clientssl))
            || !FUNC12(info_cb_failed))
        goto end;

    testresult = 1;

 end:
    FUNC3(serverssl);
    FUNC3(clientssl);
    FUNC2(clntsess);
    FUNC0(sctx);
    FUNC0(cctx);
    return testresult;
}