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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DTLS1_VERSION ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMPACKET_CTRL_SET_DUPLICATE_REC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  timer_cb ; 

__attribute__((used)) static int FUNC11(void)
{
    SSL_CTX *sctx = NULL, *cctx = NULL;
    SSL *serverssl = NULL, *clientssl = NULL;
    int testresult = 0;

    if (!FUNC7(FUNC9(FUNC2(),
                                       FUNC1(),
                                       DTLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        return 0;

    if (!FUNC7(FUNC10(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL)))
        goto end;

    FUNC3(clientssl, timer_cb);
    FUNC3(serverssl, timer_cb);

    FUNC0(FUNC6(clientssl), MEMPACKET_CTRL_SET_DUPLICATE_REC, 1, NULL);
    FUNC0(FUNC6(serverssl), MEMPACKET_CTRL_SET_DUPLICATE_REC, 1, NULL);

    if (!FUNC7(FUNC8(serverssl, clientssl, SSL_ERROR_NONE)))
        goto end;

    testresult = 1;
 end:
    FUNC5(serverssl);
    FUNC5(clientssl);
    FUNC4(sctx);
    FUNC4(cctx);

    return testresult;
}