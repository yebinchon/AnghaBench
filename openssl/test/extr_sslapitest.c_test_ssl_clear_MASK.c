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
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC12(int idx)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;

#ifdef OPENSSL_NO_TLS1_2
    if (idx == 1)
        return 1;
#endif

    /* Create an initial connection */
    if (!FUNC6(FUNC10(FUNC8(), FUNC7(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey))
            || (idx == 1
                && !FUNC6(FUNC1(cctx,
                                                            TLS1_2_VERSION)))
            || !FUNC6(FUNC11(sctx, cctx, &serverssl,
                                          &clientssl, NULL, NULL))
            || !FUNC6(FUNC9(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    FUNC5(clientssl);
    FUNC5(serverssl);
    FUNC3(serverssl);
    serverssl = NULL;

    /* Clear clientssl - we're going to reuse the object */
    if (!FUNC6(FUNC2(clientssl)))
        goto end;

    if (!FUNC6(FUNC11(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL))
            || !FUNC6(FUNC9(serverssl, clientssl,
                                                SSL_ERROR_NONE))
            || !FUNC6(FUNC4(clientssl)))
        goto end;

    FUNC5(clientssl);
    FUNC5(serverssl);

    testresult = 1;

 end:
    FUNC3(serverssl);
    FUNC3(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);

    return testresult;
}