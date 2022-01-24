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
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int SSL_ERROR_SSL ; 
 int SSL_ERROR_ZERO_RETURN ; 
 int /*<<< orphan*/  SSL_KEY_UPDATE_REQUESTED ; 
 int SSL_RECEIVED_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (size_t,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  TLS1_3_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (char*,char*,size_t) ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC26(int tst)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    char msg[] = "A test message";
    char buf[80];
    size_t written, readbytes;
    SSL_SESSION *sess;

#ifdef OPENSSL_NO_TLS1_2
    if (tst <= 1)
        return 1;
#endif
#ifdef OPENSSL_NO_TLS1_3
    if (tst >= 2)
        return 1;
#endif

    if (!FUNC18(FUNC23(FUNC20(),
                                       FUNC19(),
                                       TLS1_VERSION,
                                       (tst <= 1) ? TLS1_2_VERSION
                                                  : TLS1_3_VERSION,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (tst == 5)
        FUNC1(cctx, 1);

    if (!FUNC18(FUNC24(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL)))
        goto end;

    if (tst == 3) {
        if (!FUNC18(FUNC21(serverssl, clientssl,
                                                  SSL_ERROR_NONE, 1))
                || !FUNC16(sess = FUNC5(clientssl), NULL)
                || !FUNC14(FUNC2(sess)))
            goto end;
    } else if (!FUNC18(FUNC22(serverssl, clientssl,
                                              SSL_ERROR_NONE))
            || !FUNC16(sess = FUNC5(clientssl), NULL)
            || !FUNC18(FUNC2(sess))) {
        goto end;
    }

    if (!FUNC15(FUNC10(clientssl), 0))
        goto end;

    if (tst >= 4) {
        /*
         * Reading on the server after the client has sent close_notify should
         * fail and provide SSL_ERROR_ZERO_RETURN
         */
        if (!FUNC14(FUNC8(serverssl, buf, sizeof(buf), &readbytes))
                || !FUNC15(FUNC4(serverssl, 0),
                                SSL_ERROR_ZERO_RETURN)
                || !FUNC15(FUNC6(serverssl),
                                SSL_RECEIVED_SHUTDOWN)
                   /*
                    * Even though we're shutdown on receive we should still be
                    * able to write.
                    */
                || !FUNC18(FUNC12(serverssl, msg, sizeof(msg))))
            goto end;
        if (tst == 4
                && !FUNC18(FUNC7(serverssl,
                                             SSL_KEY_UPDATE_REQUESTED)))
            goto end;
        if (tst == 5) {
            FUNC9(serverssl, SSL_VERIFY_PEER, NULL);
            if (!FUNC18(FUNC11(serverssl)))
                goto end;
        }
        if ((tst == 4 || tst == 5)
                && !FUNC18(FUNC12(serverssl, msg, sizeof(msg))))
            goto end;
        if (!FUNC15(FUNC10(serverssl), 1))
            goto end;
        if (tst == 4 || tst == 5) {
            /* Should still be able to read data from server */
            if (!FUNC18(FUNC8(clientssl, buf, sizeof(buf),
                                       &readbytes))
                    || !FUNC17(readbytes, sizeof(msg))
                    || !FUNC15(FUNC25(msg, buf, readbytes), 0)
                    || !FUNC18(FUNC8(clientssl, buf, sizeof(buf),
                                              &readbytes))
                    || !FUNC17(readbytes, sizeof(msg))
                    || !FUNC15(FUNC25(msg, buf, readbytes), 0))
                goto end;
        }
    }

    /* Writing on the client after sending close_notify shouldn't be possible */
    if (!FUNC14(FUNC13(clientssl, msg, sizeof(msg), &written)))
        goto end;

    if (tst < 4) {
        /*
         * For these tests the client has sent close_notify but it has not yet
         * been received by the server. The server has not sent close_notify
         * yet.
         */
        if (!FUNC15(FUNC10(serverssl), 0)
                   /*
                    * Writing on the server after sending close_notify shouldn't
                    * be possible.
                    */
                || !FUNC14(FUNC13(serverssl, msg, sizeof(msg), &written))
                || !FUNC15(FUNC10(clientssl), 1)
                || !FUNC16(sess = FUNC5(clientssl), NULL)
                || !FUNC18(FUNC2(sess))
                || !FUNC15(FUNC10(serverssl), 1))
            goto end;
    } else if (tst == 4 || tst == 5) {
        /*
         * In this test the client has sent close_notify and it has been
         * received by the server which has responded with a close_notify. The
         * client needs to read the close_notify sent by the server.
         */
        if (!FUNC15(FUNC10(clientssl), 1)
                || !FUNC16(sess = FUNC5(clientssl), NULL)
                || !FUNC18(FUNC2(sess)))
            goto end;
    } else {
        /*
         * tst == 6
         *
         * The client has sent close_notify and is expecting a close_notify
         * back, but instead there is application data first. The shutdown
         * should fail with a fatal error.
         */
        if (!FUNC15(FUNC10(clientssl), -1)
                || !FUNC15(FUNC4(clientssl, -1), SSL_ERROR_SSL))
            goto end;
    }

    testresult = 1;

 end:
    FUNC3(serverssl);
    FUNC3(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);

    return testresult;
}