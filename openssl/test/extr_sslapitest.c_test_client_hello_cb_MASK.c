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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_ERROR_WANT_CLIENT_HELLO_CB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  full_client_hello_callback ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC14(void)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testctr = 0, testresult = 0;

    if (!FUNC8(FUNC12(FUNC10(), FUNC9(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;
    FUNC2(sctx, full_client_hello_callback, &testctr);

    /* The gimpy cipher list we configure can't do TLS 1.3. */
    FUNC3(cctx, TLS1_2_VERSION);

    if (!FUNC8(FUNC1(cctx,
                        "AES256-GCM-SHA384:ECDHE-ECDSA-AES256-GCM-SHA384"))
            || !FUNC8(FUNC13(sctx, cctx, &serverssl,
                                             &clientssl, NULL, NULL))
            || !FUNC6(FUNC11(serverssl, clientssl,
                        SSL_ERROR_WANT_CLIENT_HELLO_CB))
                /*
                 * Passing a -1 literal is a hack since
                 * the real value was lost.
                 * */
            || !FUNC7(FUNC5(serverssl, -1),
                            SSL_ERROR_WANT_CLIENT_HELLO_CB)
            || !FUNC8(FUNC11(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    testresult = 1;

end:
    FUNC4(serverssl);
    FUNC4(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);

    return testresult;
}