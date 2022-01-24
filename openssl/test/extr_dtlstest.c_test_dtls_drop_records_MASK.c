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
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int CLI_TO_SRV_EPOCH_0_RECS ; 
 int CLI_TO_SRV_EPOCH_1_RECS ; 
 int CLI_TO_SRV_RESUME_EPOCH_0_RECS ; 
 int CLI_TO_SRV_RESUME_EPOCH_1_RECS ; 
 int /*<<< orphan*/  DTLS1_VERSION ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMPACKET_CTRL_GET_DROP_REC ; 
 int /*<<< orphan*/  MEMPACKET_CTRL_SET_DROP_EPOCH ; 
 int /*<<< orphan*/  MEMPACKET_CTRL_SET_DROP_REC ; 
 int SRV_TO_CLI_EPOCH_0_RECS ; 
 int SRV_TO_CLI_RESUME_EPOCH_0_RECS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int TOTAL_FULL_HAND_RECORDS ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  timer_cb ; 

__attribute__((used)) static int FUNC21(int idx)
{
    SSL_CTX *sctx = NULL, *cctx = NULL;
    SSL *serverssl = NULL, *clientssl = NULL;
    BIO *c_to_s_fbio, *mempackbio;
    int testresult = 0;
    int epoch = 0;
    SSL_SESSION *sess = NULL;
    int cli_to_srv_epoch0, cli_to_srv_epoch1, srv_to_cli_epoch0;

    if (!FUNC16(FUNC19(FUNC4(),
                                       FUNC3(),
                                       DTLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        return 0;

    if (idx >= TOTAL_FULL_HAND_RECORDS) {
        /* We're going to do a resumption handshake. Get a session first. */
        if (!FUNC16(FUNC20(sctx, cctx, &serverssl, &clientssl,
                                          NULL, NULL))
                || !FUNC16(FUNC18(serverssl, clientssl,
                              SSL_ERROR_NONE))
                || !FUNC15(sess = FUNC9(clientssl)))
            goto end;

        FUNC13(clientssl);
        FUNC13(serverssl);
        FUNC8(serverssl);
        FUNC8(clientssl);
        serverssl = clientssl = NULL;

        cli_to_srv_epoch0 = CLI_TO_SRV_RESUME_EPOCH_0_RECS;
        cli_to_srv_epoch1 = CLI_TO_SRV_RESUME_EPOCH_1_RECS;
        srv_to_cli_epoch0 = SRV_TO_CLI_RESUME_EPOCH_0_RECS;
        idx -= TOTAL_FULL_HAND_RECORDS;
    } else {
        cli_to_srv_epoch0 = CLI_TO_SRV_EPOCH_0_RECS;
        cli_to_srv_epoch1 = CLI_TO_SRV_EPOCH_1_RECS;
        srv_to_cli_epoch0 = SRV_TO_CLI_EPOCH_0_RECS;
    }

    c_to_s_fbio = FUNC1(FUNC17());
    if (!FUNC15(c_to_s_fbio))
        goto end;

    /* BIO is freed by create_ssl_connection on error */
    if (!FUNC16(FUNC20(sctx, cctx, &serverssl, &clientssl,
                                      NULL, c_to_s_fbio)))
        goto end;

    if (sess != NULL) {
        if (!FUNC16(FUNC12(clientssl, sess)))
            goto end;
    }

    FUNC5(clientssl, timer_cb);
    FUNC5(serverssl, timer_cb);

    /* Work out which record to drop based on the test number */
    if (idx >= cli_to_srv_epoch0 + cli_to_srv_epoch1) {
        mempackbio = FUNC10(serverssl);
        idx -= cli_to_srv_epoch0 + cli_to_srv_epoch1;
        if (idx >= srv_to_cli_epoch0) {
            epoch = 1;
            idx -= srv_to_cli_epoch0;
        }
    } else {
        mempackbio = FUNC10(clientssl);
        if (idx >= cli_to_srv_epoch0) {
            epoch = 1;
            idx -= cli_to_srv_epoch0;
        }
         mempackbio = FUNC2(mempackbio);
    }
    FUNC0(mempackbio, MEMPACKET_CTRL_SET_DROP_EPOCH, epoch, NULL);
    FUNC0(mempackbio, MEMPACKET_CTRL_SET_DROP_REC, idx, NULL);

    if (!FUNC16(FUNC18(serverssl, clientssl, SSL_ERROR_NONE)))
        goto end;

    if (sess != NULL && !FUNC16(FUNC11(clientssl)))
        goto end;

    /* If the test did what we planned then it should have dropped a record */
    if (!FUNC14((int)FUNC0(mempackbio, MEMPACKET_CTRL_GET_DROP_REC, 0,
                                   NULL), -1))
        goto end;

    testresult = 1;
 end:
    FUNC7(sess);
    FUNC8(serverssl);
    FUNC8(clientssl);
    FUNC6(sctx);
    FUNC6(cctx);

    return testresult;
}