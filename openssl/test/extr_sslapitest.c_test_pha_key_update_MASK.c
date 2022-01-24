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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_KEY_UPDATE_NOT_REQUESTED ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_3_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC17(void)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;

    if (!FUNC11(FUNC15(FUNC13(), FUNC12(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        return 0;

    if (!FUNC11(FUNC2(sctx, TLS1_3_VERSION))
        || !FUNC11(FUNC1(sctx, TLS1_3_VERSION))
        || !FUNC11(FUNC2(cctx, TLS1_3_VERSION))
        || !FUNC11(FUNC1(cctx, TLS1_3_VERSION)))
        goto end;

    FUNC3(cctx, 1);

    if (!FUNC11(FUNC16(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL)))
        goto end;

    if (!FUNC11(FUNC14(serverssl, clientssl,
                                         SSL_ERROR_NONE)))
        goto end;

    FUNC7(serverssl, SSL_VERIFY_PEER, NULL);
    if (!FUNC11(FUNC9(serverssl)))
        goto end;

    if (!FUNC11(FUNC6(clientssl, SSL_KEY_UPDATE_NOT_REQUESTED)))
        goto end;

    /* Start handshake on the server */
    if (!FUNC10(FUNC4(serverssl), 1))
        goto end;

    /* Starts with SSL_connect(), but it's really just SSL_do_handshake() */
    if (!FUNC11(FUNC14(serverssl, clientssl,
                                         SSL_ERROR_NONE)))
        goto end;

    FUNC8(clientssl);
    FUNC8(serverssl);

    testresult = 1;

 end:
    FUNC5(serverssl);
    FUNC5(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);
    return testresult;
}