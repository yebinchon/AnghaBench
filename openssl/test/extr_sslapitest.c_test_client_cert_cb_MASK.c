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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int SSL_VERIFY_FAIL_IF_NO_PEER_CERT ; 
 int SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  TLS1_3_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  client_cert_cb ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  verify_cb ; 

__attribute__((used)) static int FUNC10(int tst)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;

#ifdef OPENSSL_NO_TLS1_2
    if (tst == 0)
        return 1;
#endif
#ifdef OPENSSL_NO_TLS1_3
    if (tst == 1)
        return 1;
#endif

    if (!FUNC4(FUNC8(FUNC6(),
                                       FUNC5(),
                                       TLS1_VERSION,
                                       tst == 0 ? TLS1_2_VERSION
                                                : TLS1_3_VERSION,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    /*
     * Test that setting a client_cert_cb results in a client certificate being
     * sent.
     */
    FUNC1(cctx, client_cert_cb);
    FUNC2(sctx,
                       SSL_VERIFY_PEER | SSL_VERIFY_FAIL_IF_NO_PEER_CERT,
                       verify_cb);

    if (!FUNC4(FUNC9(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL))
            || !FUNC4(FUNC7(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    testresult = 1;

 end:
    FUNC3(serverssl);
    FUNC3(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);

    return testresult;
}