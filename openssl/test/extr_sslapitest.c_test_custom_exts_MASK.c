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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 unsigned int SSL_EXT_CLIENT_HELLO ; 
 unsigned int SSL_EXT_TLS1_2_SERVER_HELLO ; 
 unsigned int SSL_EXT_TLS1_3_CERTIFICATE ; 
 unsigned int SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS ; 
 unsigned int SSL_EXT_TLS1_3_NEW_SESSION_TICKET ; 
 unsigned int SSL_EXT_TLS1_3_SERVER_HELLO ; 
 int /*<<< orphan*/  SSL_OP_NO_TLSv1_3 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TEST_EXT_TYPE1 ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  cert ; 
 int clntaddnewcb ; 
 int clntaddoldcb ; 
 int clntparsenewcb ; 
 int clntparseoldcb ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  new_add_cb ; 
 int /*<<< orphan*/  new_free_cb ; 
 int /*<<< orphan*/  new_parse_cb ; 
 int /*<<< orphan*/  old_add_cb ; 
 int /*<<< orphan*/  old_free_cb ; 
 int /*<<< orphan*/  old_parse_cb ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  sni_cb ; 
 int snicb ; 
 int srvaddnewcb ; 
 int srvaddoldcb ; 
 int srvparsenewcb ; 
 int srvparseoldcb ; 

__attribute__((used)) static int FUNC19(int tst)
{
    SSL_CTX *cctx = NULL, *sctx = NULL, *sctx2 = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    static int server = 1;
    static int client = 0;
    SSL_SESSION *sess = NULL;
    unsigned int context;

#if defined(OPENSSL_NO_TLS1_2) && !defined(OPENSSL_NO_TLS1_3)
    /* Skip tests for TLSv1.2 and below in this case */
    if (tst < 3)
        return 1;
#endif

    /* Reset callback counters */
    clntaddoldcb = clntparseoldcb = srvaddoldcb = srvparseoldcb = 0;
    clntaddnewcb = clntparsenewcb = srvaddnewcb = srvparsenewcb = 0;
    snicb = 0;

    if (!FUNC13(FUNC17(FUNC15(), FUNC14(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (tst == 2
            && !FUNC13(FUNC17(FUNC15(), NULL,
                                              TLS1_VERSION, 0,
                                              &sctx2, NULL, cert, privkey)))
        goto end;


    if (tst < 3) {
        FUNC4(cctx, SSL_OP_NO_TLSv1_3);
        FUNC4(sctx, SSL_OP_NO_TLSv1_3);
        if (sctx2 != NULL)
            FUNC4(sctx2, SSL_OP_NO_TLSv1_3);
    }

    if (tst == 4) {
        context = SSL_EXT_CLIENT_HELLO
                  | SSL_EXT_TLS1_2_SERVER_HELLO
                  | SSL_EXT_TLS1_3_SERVER_HELLO
                  | SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS
                  | SSL_EXT_TLS1_3_CERTIFICATE
                  | SSL_EXT_TLS1_3_NEW_SESSION_TICKET;
    } else {
        context = SSL_EXT_CLIENT_HELLO
                  | SSL_EXT_TLS1_2_SERVER_HELLO
                  | SSL_EXT_TLS1_3_ENCRYPTED_EXTENSIONS;
    }

    /* Create a client side custom extension */
    if (tst == 0) {
        if (!FUNC13(FUNC0(cctx, TEST_EXT_TYPE1,
                                                     old_add_cb, old_free_cb,
                                                     &client, old_parse_cb,
                                                     &client)))
            goto end;
    } else {
        if (!FUNC13(FUNC1(cctx, TEST_EXT_TYPE1, context,
                                              new_add_cb, new_free_cb,
                                              &client, new_parse_cb, &client)))
            goto end;
    }

    /* Should not be able to add duplicates */
    if (!FUNC12(FUNC0(cctx, TEST_EXT_TYPE1,
                                                  old_add_cb, old_free_cb,
                                                  &client, old_parse_cb,
                                                  &client))
            || !FUNC12(FUNC1(cctx, TEST_EXT_TYPE1,
                                                  context, new_add_cb,
                                                  new_free_cb, &client,
                                                  new_parse_cb, &client)))
        goto end;

    /* Create a server side custom extension */
    if (tst == 0) {
        if (!FUNC13(FUNC2(sctx, TEST_EXT_TYPE1,
                                                     old_add_cb, old_free_cb,
                                                     &server, old_parse_cb,
                                                     &server)))
            goto end;
    } else {
        if (!FUNC13(FUNC1(sctx, TEST_EXT_TYPE1, context,
                                              new_add_cb, new_free_cb,
                                              &server, new_parse_cb, &server)))
            goto end;
        if (sctx2 != NULL
                && !FUNC13(FUNC1(sctx2, TEST_EXT_TYPE1,
                                                     context, new_add_cb,
                                                     new_free_cb, &server,
                                                     new_parse_cb, &server)))
            goto end;
    }

    /* Should not be able to add duplicates */
    if (!FUNC12(FUNC2(sctx, TEST_EXT_TYPE1,
                                                  old_add_cb, old_free_cb,
                                                  &server, old_parse_cb,
                                                  &server))
            || !FUNC12(FUNC1(sctx, TEST_EXT_TYPE1,
                                                  context, new_add_cb,
                                                  new_free_cb, &server,
                                                  new_parse_cb, &server)))
        goto end;

    if (tst == 2) {
        /* Set up SNI */
        if (!FUNC13(FUNC6(sctx, sni_cb))
                || !FUNC13(FUNC5(sctx, sctx2)))
            goto end;
    }

    if (!FUNC13(FUNC18(sctx, cctx, &serverssl,
                                      &clientssl, NULL, NULL))
            || !FUNC13(FUNC16(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    if (tst == 0) {
        if (clntaddoldcb != 1
                || clntparseoldcb != 1
                || srvaddoldcb != 1
                || srvparseoldcb != 1)
            goto end;
    } else if (tst == 1 || tst == 2 || tst == 3) {
        if (clntaddnewcb != 1
                || clntparsenewcb != 1
                || srvaddnewcb != 1
                || srvparsenewcb != 1
                || (tst != 2 && snicb != 0)
                || (tst == 2 && snicb != 1))
            goto end;
    } else {
        /* In this case there 2 NewSessionTicket messages created */
        if (clntaddnewcb != 1
                || clntparsenewcb != 5
                || srvaddnewcb != 5
                || srvparsenewcb != 1)
            goto end;
    }

    sess = FUNC9(clientssl);
    FUNC11(clientssl);
    FUNC11(serverssl);
    FUNC8(serverssl);
    FUNC8(clientssl);
    serverssl = clientssl = NULL;

    if (tst == 3) {
        /* We don't bother with the resumption aspects for this test */
        testresult = 1;
        goto end;
    }

    if (!FUNC13(FUNC18(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL))
            || !FUNC13(FUNC10(clientssl, sess))
            || !FUNC13(FUNC16(serverssl, clientssl,
                                               SSL_ERROR_NONE)))
        goto end;

    /*
     * For a resumed session we expect to add the ClientHello extension. For the
     * old style callbacks we ignore it on the server side because they set
     * SSL_EXT_IGNORE_ON_RESUMPTION. The new style callbacks do not ignore
     * them.
     */
    if (tst == 0) {
        if (clntaddoldcb != 2
                || clntparseoldcb != 1
                || srvaddoldcb != 1
                || srvparseoldcb != 1)
            goto end;
    } else if (tst == 1 || tst == 2 || tst == 3) {
        if (clntaddnewcb != 2
                || clntparsenewcb != 2
                || srvaddnewcb != 2
                || srvparsenewcb != 2)
            goto end;
    } else {
        /*
         * No Certificate message extensions in the resumption handshake,
         * 2 NewSessionTickets in the initial handshake, 1 in the resumption
         */
        if (clntaddnewcb != 2
                || clntparsenewcb != 8
                || srvaddnewcb != 8
                || srvparsenewcb != 2)
            goto end;
    }

    testresult = 1;

end:
    FUNC7(sess);
    FUNC8(serverssl);
    FUNC8(clientssl);
    FUNC3(sctx2);
    FUNC3(sctx);
    FUNC3(cctx);
    return testresult;
}