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
 int /*<<< orphan*/  SSL_OP_NO_EXTENDED_MASTER_SECRET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC10(void)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;

    if (!FUNC7(FUNC5(), FUNC4(),
                             TLS1_VERSION, TLS1_2_VERSION,
                             &sctx, &cctx, cert, privkey)) {
        FUNC9("Unable to create SSL_CTX pair\n");
        goto end;
    }

    FUNC1(sctx, SSL_OP_NO_EXTENDED_MASTER_SECRET);

    if (!FUNC8(sctx, cctx, &serverssl, &clientssl, NULL, NULL)) {
        FUNC9("Unable to create SSL objects\n");
        goto end;
    }

    if (!FUNC6(serverssl, clientssl, SSL_ERROR_NONE)) {
        FUNC9("Creating SSL connection failed\n");
        goto end;
    }

    if (FUNC3(serverssl)) {
        FUNC9("Server reports Extended Master Secret support\n");
        goto end;
    }

    if (FUNC3(clientssl)) {
        FUNC9("Client reports Extended Master Secret support\n");
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