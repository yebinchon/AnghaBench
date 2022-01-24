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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_ERROR_WANT_READ ; 
 int /*<<< orphan*/  SSL_OP_ENABLE_MIDDLEBOX_COMPAT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  generate_stateless_cookie_callback ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  verify_stateless_cookie_callback ; 

__attribute__((used)) static int FUNC15(void)
{
    SSL_CTX *sctx = NULL, *cctx = NULL;
    SSL *serverssl = NULL, *clientssl = NULL;
    int testresult = 0;

    if (!FUNC8(FUNC12(FUNC10(), FUNC9(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    /* The arrival of CCS messages can confuse the test */
    FUNC0(cctx, SSL_OP_ENABLE_MIDDLEBOX_COMPAT);

    if (!FUNC8(FUNC13(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL))
               /* Send the first ClientHello */
            || !FUNC6(FUNC11(serverssl, clientssl,
                                                 SSL_ERROR_WANT_READ))
               /*
                * This should fail with a -1 return because we have no callbacks
                * set up
                */
            || !FUNC7(FUNC5(serverssl), -1))
        goto end;

    /* Fatal error so abandon the connection from this client */
    FUNC4(clientssl);
    clientssl = NULL;

    /* Set up the cookie generation and verification callbacks */
    FUNC2(sctx, generate_stateless_cookie_callback);
    FUNC3(sctx, verify_stateless_cookie_callback);

    /*
     * Create a new connection from the client (we can reuse the server SSL
     * object).
     */
    if (!FUNC8(FUNC13(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL))
               /* Send the first ClientHello */
            || !FUNC6(FUNC11(serverssl, clientssl,
                                                SSL_ERROR_WANT_READ))
               /* This should fail because there is no cookie */
            || !FUNC7(FUNC5(serverssl), 0))
        goto end;

    /* Abandon the connection from this client */
    FUNC4(clientssl);
    clientssl = NULL;

    /*
     * Now create a connection from a new client but with the same server SSL
     * object
     */
    if (!FUNC8(FUNC13(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL))
               /* Send the first ClientHello */
            || !FUNC6(FUNC11(serverssl, clientssl,
                                                SSL_ERROR_WANT_READ))
               /* This should fail because there is no cookie */
            || !FUNC7(FUNC5(serverssl), 0)
               /* Send the second ClientHello */
            || !FUNC6(FUNC11(serverssl, clientssl,
                                                SSL_ERROR_WANT_READ))
               /* This should succeed because a cookie is now present */
            || !FUNC7(FUNC5(serverssl), 1)
               /* Complete the connection */
            || !FUNC8(FUNC11(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    FUNC14(serverssl, clientssl);
    serverssl = clientssl = NULL;
    testresult = 1;

 end:
    FUNC4(serverssl);
    FUNC4(clientssl);
    FUNC1(sctx);
    FUNC1(cctx);
    return testresult;

}