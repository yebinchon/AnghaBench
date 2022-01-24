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
typedef  int /*<<< orphan*/  SSL_CONF_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  MSG1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SSL_CONF_FLAG_FILE ; 
 int SSL_CONF_FLAG_SERVER ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SSL_EARLY_DATA_ACCEPTED ; 
 int SSL_EARLY_DATA_REJECTED ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_OP_NO_ANTI_REPLAY ; 
 int SSL_READ_EARLY_DATA_FINISH ; 
 int SSL_READ_EARLY_DATA_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  allow_early_data_cb ; 
 scalar_t__ allow_ed_cb_called ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/ * clientpsk ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/ * serverpsk ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC30(int idx, int usecb, int confopt)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    SSL_SESSION *sess = NULL;
    size_t readbytes, written;
    unsigned char buf[20];

    allow_ed_cb_called = 0;

    if (!FUNC22(FUNC26(FUNC24(), FUNC23(),
                                       TLS1_VERSION, 0, &sctx,
                                       &cctx, cert, privkey)))
        return 0;

    if (usecb > 0) {
        if (confopt == 0) {
            FUNC7(sctx, SSL_OP_NO_ANTI_REPLAY);
        } else {
            SSL_CONF_CTX *confctx = FUNC1();

            if (!FUNC20(confctx))
                goto end;
            FUNC2(confctx, SSL_CONF_FLAG_FILE
                                            | SSL_CONF_FLAG_SERVER);
            FUNC3(confctx, sctx);
            if (!FUNC17(FUNC4(confctx, "Options", "-AntiReplay"),
                             2)) {
                FUNC0(confctx);
                goto end;
            }
            FUNC0(confctx);
        }
        FUNC6(sctx, allow_early_data_cb, &usecb);
    }

    if (!FUNC22(FUNC28(&cctx, &sctx, &clientssl,
                                        &serverssl, &sess, idx)))
        goto end;

    /*
     * The server is configured to accept early data. Create a connection to
     * "use up" the ticket
     */
    if (!FUNC22(FUNC25(serverssl, clientssl, SSL_ERROR_NONE))
            || !FUNC22(FUNC13(clientssl)))
        goto end;

    FUNC15(clientssl);
    FUNC15(serverssl);
    FUNC10(serverssl);
    FUNC10(clientssl);
    serverssl = clientssl = NULL;

    if (!FUNC22(FUNC27(sctx, cctx, &serverssl,
                                      &clientssl, NULL, NULL))
            || !FUNC22(FUNC14(clientssl, sess)))
        goto end;

    /* Write and read some early data */
    if (!FUNC22(FUNC16(clientssl, MSG1, FUNC29(MSG1),
                                        &written))
            || !FUNC21(written, FUNC29(MSG1)))
        goto end;

    if (usecb <= 1) {
        if (!FUNC17(FUNC12(serverssl, buf, sizeof(buf),
                                             &readbytes),
                         SSL_READ_EARLY_DATA_FINISH)
                   /*
                    * The ticket was reused, so the we should have rejected the
                    * early data
                    */
                || !FUNC17(FUNC11(serverssl),
                                SSL_EARLY_DATA_REJECTED))
            goto end;
    } else {
        /* In this case the callback decides to accept the early data */
        if (!FUNC17(FUNC12(serverssl, buf, sizeof(buf),
                                             &readbytes),
                         SSL_READ_EARLY_DATA_SUCCESS)
                || !FUNC19(MSG1, FUNC29(MSG1), buf, readbytes)
                   /*
                    * Server will have sent its flight so client can now send
                    * end of early data and complete its half of the handshake
                    */
                || !FUNC18(FUNC9(clientssl), 0)
                || !FUNC17(FUNC12(serverssl, buf, sizeof(buf),
                                             &readbytes),
                                SSL_READ_EARLY_DATA_FINISH)
                || !FUNC17(FUNC11(serverssl),
                                SSL_EARLY_DATA_ACCEPTED))
            goto end;
    }

    /* Complete the connection */
    if (!FUNC22(FUNC25(serverssl, clientssl, SSL_ERROR_NONE))
            || !FUNC17(FUNC13(clientssl), (usecb > 0) ? 1 : 0)
            || !FUNC17(allow_ed_cb_called, usecb > 0 ? 1 : 0))
        goto end;

    testresult = 1;

 end:
    FUNC8(sess);
    FUNC8(clientpsk);
    FUNC8(serverpsk);
    clientpsk = serverpsk = NULL;
    FUNC10(serverssl);
    FUNC10(clientssl);
    FUNC5(sctx);
    FUNC5(cctx);
    return testresult;
}