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
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL_CIPHER ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/  const*,unsigned char const*,int) ; 
 int FUNC10 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int FUNC11 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  TLS13_AES_128_GCM_SHA256_BYTES ; 
 int /*<<< orphan*/  TLS1_3_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/ * cert ; 
 int /*<<< orphan*/  const* clientpsk ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  find_session_cb ; 
 int find_session_cb_cnt ; 
 int /*<<< orphan*/ * privkey ; 
 int /*<<< orphan*/  psk_client_cb ; 
 int psk_client_cb_cnt ; 
 int /*<<< orphan*/  psk_server_cb ; 
 int psk_server_cb_cnt ; 
 char* pskid ; 
 int /*<<< orphan*/  const* serverpsk ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* srvid ; 
 int /*<<< orphan*/  use_session_cb ; 
 int use_session_cb_cnt ; 

__attribute__((used)) static int FUNC25(int idx)
{
    SSL_CTX *sctx = NULL, *cctx = NULL;
    SSL *serverssl = NULL, *clientssl = NULL;
    const SSL_CIPHER *cipher = NULL;
    const unsigned char key[] = {
        0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a, 0x0b,
        0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17,
        0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23,
        0x24, 0x25, 0x26, 0x27, 0x28, 0x29, 0x2a, 0x2b, 0x2c, 0x2d, 0x2e, 0x2f
    };
    int testresult = 0;

    if (!FUNC18(FUNC22(FUNC20(), FUNC19(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, idx == 3 ? NULL : cert,
                                       idx == 3 ? NULL : privkey)))
        goto end;

    if (idx != 3) {
        /*
         * We use a ciphersuite with SHA256 to ease testing old style PSK
         * callbacks which will always default to SHA256. This should not be
         * necessary if we have no cert/priv key. In that case the server should
         * prefer SHA256 automatically.
         */
        if (!FUNC18(FUNC2(cctx,
                                                "TLS_AES_128_GCM_SHA256")))
            goto end;
    }

    /*
     * Test 0: New style callbacks only
     * Test 1: New and old style callbacks (only the new ones should be used)
     * Test 2: Old style callbacks only
     */
    if (idx == 0 || idx == 1) {
        FUNC6(cctx, use_session_cb);
        FUNC4(sctx, find_session_cb);
    }
#ifndef OPENSSL_NO_PSK
    if (idx >= 1) {
        FUNC3(cctx, psk_client_cb);
        FUNC5(sctx, psk_server_cb);
    }
#endif
    srvid = pskid;
    use_session_cb_cnt = 0;
    find_session_cb_cnt = 0;
    psk_client_cb_cnt = 0;
    psk_server_cb_cnt = 0;

    if (idx != 3) {
        /*
         * Check we can create a connection if callback decides not to send a
         * PSK
         */
        if (!FUNC18(FUNC23(sctx, cctx, &serverssl, &clientssl,
                                                 NULL, NULL))
                || !FUNC18(FUNC21(serverssl, clientssl,
                                                    SSL_ERROR_NONE))
                || !FUNC16(FUNC14(clientssl))
                || !FUNC16(FUNC14(serverssl)))
            goto end;

        if (idx == 0 || idx == 1) {
            if (!FUNC18(use_session_cb_cnt == 1)
                    || !FUNC18(find_session_cb_cnt == 0)
                       /*
                        * If no old style callback then below should be 0
                        * otherwise 1
                        */
                    || !FUNC18(psk_client_cb_cnt == idx)
                    || !FUNC18(psk_server_cb_cnt == 0))
                goto end;
        } else {
            if (!FUNC18(use_session_cb_cnt == 0)
                    || !FUNC18(find_session_cb_cnt == 0)
                    || !FUNC18(psk_client_cb_cnt == 1)
                    || !FUNC18(psk_server_cb_cnt == 0))
                goto end;
        }

        FUNC24(serverssl, clientssl);
        serverssl = clientssl = NULL;
        use_session_cb_cnt = psk_client_cb_cnt = 0;
    }

    if (!FUNC18(FUNC23(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL)))
        goto end;

    /* Create the PSK */
    cipher = FUNC0(clientssl, TLS13_AES_128_GCM_SHA256_BYTES);
    clientpsk = FUNC8();
    if (!FUNC17(clientpsk)
            || !FUNC17(cipher)
            || !FUNC18(FUNC9(clientpsk, key,
                                                      sizeof(key)))
            || !FUNC18(FUNC10(clientpsk, cipher))
            || !FUNC18(FUNC11(clientpsk,
                                                           TLS1_3_VERSION))
            || !FUNC18(FUNC12(clientpsk)))
        goto end;
    serverpsk = clientpsk;

    /* Check we can create a connection and the PSK is used */
    if (!FUNC18(FUNC21(serverssl, clientssl, SSL_ERROR_NONE))
            || !FUNC18(FUNC14(clientssl))
            || !FUNC18(FUNC14(serverssl)))
        goto end;

    if (idx == 0 || idx == 1) {
        if (!FUNC18(use_session_cb_cnt == 1)
                || !FUNC18(find_session_cb_cnt == 1)
                || !FUNC18(psk_client_cb_cnt == 0)
                || !FUNC18(psk_server_cb_cnt == 0))
            goto end;
    } else {
        if (!FUNC18(use_session_cb_cnt == 0)
                || !FUNC18(find_session_cb_cnt == 0)
                || !FUNC18(psk_client_cb_cnt == 1)
                || !FUNC18(psk_server_cb_cnt == 1))
            goto end;
    }

    FUNC24(serverssl, clientssl);
    serverssl = clientssl = NULL;
    use_session_cb_cnt = find_session_cb_cnt = 0;
    psk_client_cb_cnt = psk_server_cb_cnt = 0;

    if (!FUNC18(FUNC23(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL)))
        goto end;

    /* Force an HRR */
#if defined(OPENSSL_NO_EC)
    if (!TEST_true(SSL_set1_groups_list(serverssl, "ffdhe3072")))
        goto end;
#else
    if (!FUNC18(FUNC15(serverssl, "P-256")))
        goto end;
#endif

    /*
     * Check we can create a connection, the PSK is used and the callbacks are
     * called twice.
     */
    if (!FUNC18(FUNC21(serverssl, clientssl, SSL_ERROR_NONE))
            || !FUNC18(FUNC14(clientssl))
            || !FUNC18(FUNC14(serverssl)))
        goto end;

    if (idx == 0 || idx == 1) {
        if (!FUNC18(use_session_cb_cnt == 2)
                || !FUNC18(find_session_cb_cnt == 2)
                || !FUNC18(psk_client_cb_cnt == 0)
                || !FUNC18(psk_server_cb_cnt == 0))
            goto end;
    } else {
        if (!FUNC18(use_session_cb_cnt == 0)
                || !FUNC18(find_session_cb_cnt == 0)
                || !FUNC18(psk_client_cb_cnt == 2)
                || !FUNC18(psk_server_cb_cnt == 2))
            goto end;
    }

    FUNC24(serverssl, clientssl);
    serverssl = clientssl = NULL;
    use_session_cb_cnt = find_session_cb_cnt = 0;
    psk_client_cb_cnt = psk_server_cb_cnt = 0;

    if (idx != 3) {
        /*
         * Check that if the server rejects the PSK we can still connect, but with
         * a full handshake
         */
        srvid = "Dummy Identity";
        if (!FUNC18(FUNC23(sctx, cctx, &serverssl, &clientssl,
                                                 NULL, NULL))
                || !FUNC18(FUNC21(serverssl, clientssl,
                                                    SSL_ERROR_NONE))
                || !FUNC16(FUNC14(clientssl))
                || !FUNC16(FUNC14(serverssl)))
            goto end;

        if (idx == 0 || idx == 1) {
            if (!FUNC18(use_session_cb_cnt == 1)
                    || !FUNC18(find_session_cb_cnt == 1)
                    || !FUNC18(psk_client_cb_cnt == 0)
                       /*
                        * If no old style callback then below should be 0
                        * otherwise 1
                        */
                    || !FUNC18(psk_server_cb_cnt == idx))
                goto end;
        } else {
            if (!FUNC18(use_session_cb_cnt == 0)
                    || !FUNC18(find_session_cb_cnt == 0)
                    || !FUNC18(psk_client_cb_cnt == 1)
                    || !FUNC18(psk_server_cb_cnt == 1))
                goto end;
        }

        FUNC24(serverssl, clientssl);
        serverssl = clientssl = NULL;
    }
    testresult = 1;

 end:
    FUNC7(clientpsk);
    FUNC7(serverpsk);
    clientpsk = serverpsk = NULL;
    FUNC13(serverssl);
    FUNC13(clientssl);
    FUNC1(sctx);
    FUNC1(cctx);
    return testresult;
}