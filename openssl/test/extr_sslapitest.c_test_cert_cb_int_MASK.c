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
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  cert_cb ; 
 int cert_cb_cnt ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(int prot, int tst)
{
    SSL_CTX *cctx = NULL, *sctx = NULL, *snictx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0, ret;

#ifdef OPENSSL_NO_EC
    /* We use an EC cert in these tests, so we skip in a no-ec build */
    if (tst >= 3)
        return 1;
#endif

    if (!FUNC6(FUNC10(FUNC8(),
                                       FUNC7(),
                                       TLS1_VERSION,
                                       prot,
                                       &sctx, &cctx, NULL, NULL)))
        goto end;

    if (tst == 0)
        cert_cb_cnt = -1;
    else if (tst >= 3)
        cert_cb_cnt = 3;
    else
        cert_cb_cnt = 0;

    if (tst == 2)
        snictx = FUNC1(FUNC8());
    FUNC2(sctx, cert_cb, snictx);

    if (!FUNC6(FUNC11(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL)))
        goto end;

    if (tst == 4) {
        /*
         * We cause SSL_check_chain() to fail by specifying sig_algs that
         * the chain doesn't meet (the root uses an RSA cert)
         */
        if (!FUNC6(FUNC4(clientssl,
                                             "ecdsa_secp256r1_sha256")))
            goto end;
    } else if (tst == 5) {
        /*
         * We cause SSL_check_chain() to fail by specifying sig_algs that
         * the ee cert doesn't meet (the ee uses an ECDSA cert)
         */
        if (!FUNC6(FUNC4(clientssl,
                           "rsa_pss_rsae_sha256:rsa_pkcs1_sha256")))
            goto end;
    }

    ret = FUNC9(serverssl, clientssl, SSL_ERROR_NONE);
    if (!FUNC6(tst == 0 || tst == 4 || tst == 5 ? !ret : ret)
            || (tst > 0
                && !FUNC5((cert_cb_cnt - 2) * (cert_cb_cnt - 3), 0))) {
        goto end;
    }

    testresult = 1;

 end:
    FUNC3(serverssl);
    FUNC3(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);
    FUNC0(snictx);

    return testresult;
}