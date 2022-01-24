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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
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

    if (!FUNC6(FUNC10(FUNC8(), FUNC7(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey))
            || !FUNC6(FUNC2(sctx,
                           "TLS_AES_128_GCM_SHA256:TLS_AES_128_CCM_SHA256")))
        goto end;

    if (idx >=4 && idx <= 7) {
        /* SSL_CTX explicit cipher list */
        if (!FUNC6(FUNC1(cctx, "AES256-GCM-SHA384")))
            goto end;
    }

    if (idx == 0 || idx == 4) {
        /* Default ciphersuite */
        if (!FUNC6(FUNC2(cctx,
                                                "TLS_AES_128_GCM_SHA256")))
            goto end;
    } else if (idx == 1 || idx == 5) {
        /* Non default ciphersuite */
        if (!FUNC6(FUNC2(cctx,
                                                "TLS_AES_128_CCM_SHA256")))
            goto end;
    }

    if (!FUNC6(FUNC11(sctx, cctx, &serverssl,
                                          &clientssl, NULL, NULL)))
        goto end;

    if (idx == 8 || idx == 9) {
        /* SSL explicit cipher list */
        if (!FUNC6(FUNC4(clientssl, "AES256-GCM-SHA384")))
            goto end;
    }

    if (idx == 2 || idx == 6 || idx == 8) {
        /* Default ciphersuite */
        if (!FUNC6(FUNC5(clientssl,
                                            "TLS_AES_128_GCM_SHA256")))
            goto end;
    } else if (idx == 3 || idx == 7 || idx == 9) {
        /* Non default ciphersuite */
        if (!FUNC6(FUNC5(clientssl,
                                            "TLS_AES_128_CCM_SHA256")))
            goto end;
    }

    if (!FUNC6(FUNC9(serverssl, clientssl, SSL_ERROR_NONE)))
        goto end;

    testresult = 1;

 end:
    FUNC3(serverssl);
    FUNC3(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);

    return testresult;
}