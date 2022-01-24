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
 int /*<<< orphan*/  DTLS1_VERSION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_OP_COOKIE_EXCHANGE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  generate_cookie_cb ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  verify_cookie_cb ; 

__attribute__((used)) static int FUNC11(void)
{
    SSL_CTX *sctx = NULL, *cctx = NULL;
    SSL *serverssl = NULL, *clientssl = NULL;
    int testresult = 0;

    if (!FUNC7(FUNC9(FUNC1(),
                                       FUNC0(),
                                       DTLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        return 0;

    FUNC5(sctx, SSL_OP_COOKIE_EXCHANGE);
    FUNC3(sctx, generate_cookie_cb);
    FUNC4(sctx, verify_cookie_cb);

    if (!FUNC7(FUNC10(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL))
            || !FUNC7(FUNC8(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    testresult = 1;
 end:
    FUNC6(serverssl);
    FUNC6(clientssl);
    FUNC2(sctx);
    FUNC2(cctx);

    return testresult;
}