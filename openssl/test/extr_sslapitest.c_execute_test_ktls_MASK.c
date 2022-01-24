#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  rbio; int /*<<< orphan*/  wbio; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_MODE_NO_KTLS_RX ; 
 int /*<<< orphan*/  SSL_MODE_NO_KTLS_TX ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**,TYPE_1__**,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC17(int cis_ktls_tx, int cis_ktls_rx,
                             int sis_ktls_tx, int sis_ktls_rx)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    int cfd, sfd;

    if (!FUNC8(FUNC14(&cfd, &sfd)))
        goto end;

    /* Skip this test if the platform does not support ktls */
    if (!FUNC15(cfd))
        return 1;

    /* Create a session based on SHA-256 */
    if (!FUNC8(FUNC12(FUNC10(),
                                       FUNC9(),
                                       TLS1_2_VERSION, TLS1_2_VERSION,
                                       &sctx, &cctx, cert, privkey))
            || !FUNC8(FUNC3(cctx,
                                                  "AES128-GCM-SHA256"))
            || !FUNC8(FUNC13(sctx, cctx, &serverssl,
                                          &clientssl, sfd, cfd)))
        goto end;

    if (!cis_ktls_tx) {
        if (!FUNC8(FUNC5(clientssl, SSL_MODE_NO_KTLS_TX)))
            goto end;
    }

    if (!sis_ktls_tx) {
        if (!FUNC8(FUNC5(serverssl, SSL_MODE_NO_KTLS_TX)))
            goto end;
    }

    if (!cis_ktls_rx) {
        if (!FUNC8(FUNC5(clientssl, SSL_MODE_NO_KTLS_RX)))
            goto end;
    }

    if (!sis_ktls_rx) {
        if (!FUNC8(FUNC5(serverssl, SSL_MODE_NO_KTLS_RX)))
            goto end;
    }

    if (!FUNC8(FUNC11(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    if (!cis_ktls_tx) {
        if (!FUNC7(FUNC1(clientssl->wbio)))
            goto end;
    } else {
        if (!FUNC8(FUNC1(clientssl->wbio)))
            goto end;
    }

    if (!sis_ktls_tx) {
        if (!FUNC7(FUNC1(serverssl->wbio)))
            goto end;
    } else {
        if (!FUNC8(FUNC1(serverssl->wbio)))
            goto end;
    }

    if (!cis_ktls_rx) {
        if (!FUNC7(FUNC0(clientssl->rbio)))
            goto end;
    } else {
        if (!FUNC8(FUNC0(clientssl->rbio)))
            goto end;
    }

    if (!sis_ktls_rx) {
        if (!FUNC7(FUNC0(serverssl->rbio)))
            goto end;
    } else {
        if (!FUNC8(FUNC0(serverssl->rbio)))
            goto end;
    }

    if (!FUNC8(FUNC16(clientssl, serverssl, cfd, sfd)))
        goto end;

    testresult = 1;
end:
    if (clientssl) {
        FUNC6(clientssl);
        FUNC4(clientssl);
    }
    if (serverssl) {
        FUNC6(serverssl);
        FUNC4(serverssl);
    }
    FUNC2(sctx);
    FUNC2(cctx);
    serverssl = clientssl = NULL;
    return testresult;
}