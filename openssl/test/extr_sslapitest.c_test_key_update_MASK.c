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
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int NUM_KEY_UPDATE_MESSAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_KEY_UPDATE_NOT_REQUESTED ; 
 int /*<<< orphan*/  SSL_KEY_UPDATE_REQUESTED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_3_VERSION ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int FUNC14(void)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0, i, j;
    char buf[20];
    static char *mess = "A test message";

    if (!FUNC7(FUNC11(FUNC9(),
                                       FUNC8(),
                                       TLS1_3_VERSION,
                                       0,
                                       &sctx, &cctx, cert, privkey))
            || !FUNC7(FUNC12(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL))
            || !FUNC7(FUNC10(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    for (j = 0; j < 2; j++) {
        /* Send lots of KeyUpdate messages */
        for (i = 0; i < NUM_KEY_UPDATE_MESSAGES; i++) {
            if (!FUNC7(FUNC3(clientssl,
                                          (j == 0)
                                          ? SSL_KEY_UPDATE_NOT_REQUESTED
                                          : SSL_KEY_UPDATE_REQUESTED))
                    || !FUNC7(FUNC1(clientssl)))
                goto end;
        }

        /* Check that sending and receiving app data is ok */
        if (!FUNC6(FUNC5(clientssl, mess, FUNC13(mess)), FUNC13(mess))
                || !FUNC6(FUNC4(serverssl, buf, sizeof(buf)),
                                         FUNC13(mess)))
            goto end;

        if (!FUNC6(FUNC5(serverssl, mess, FUNC13(mess)), FUNC13(mess))
                || !FUNC6(FUNC4(clientssl, buf, sizeof(buf)),
                                         FUNC13(mess)))
            goto end;
    }

    testresult = 1;

 end:
    FUNC2(serverssl);
    FUNC2(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);

    return testresult;
}