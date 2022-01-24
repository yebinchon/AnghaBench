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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL_METHOD ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int NUM_EXTRA_CERTS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int SSL3_RT_MAX_PLAIN_LENGTH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC17(const SSL_METHOD *smeth,
                                      const SSL_METHOD *cmeth,
                                      int min_version, int max_version,
                                      int read_ahead)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    int i;
    BIO *certbio = NULL;
    X509 *chaincert = NULL;
    int certlen;

    if (!FUNC9(certbio = FUNC1(cert, "r")))
        goto end;
    chaincert = FUNC3(certbio, NULL, NULL, NULL);
    FUNC0(certbio);
    certbio = NULL;
    if (!FUNC9(chaincert))
        goto end;

    if (!FUNC10(FUNC14(smeth, cmeth, min_version, max_version,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (read_ahead) {
        /*
         * Test that read_ahead works correctly when dealing with large
         * records
         */
        FUNC6(cctx, 1);
    }

    /*
     * We assume the supplied certificate is big enough so that if we add
     * NUM_EXTRA_CERTS it will make the overall message large enough. The
     * default buffer size is requested to be 16k, but due to the way BUF_MEM
     * works, it ends up allocating a little over 21k (16 * 4/3). So, in this
     * test we need to have a message larger than that.
     */
    certlen = FUNC16(chaincert, NULL);
    FUNC2(certlen * NUM_EXTRA_CERTS >
                   (SSL3_RT_MAX_PLAIN_LENGTH * 4) / 3);
    for (i = 0; i < NUM_EXTRA_CERTS; i++) {
        if (!FUNC12(chaincert))
            goto end;
        if (!FUNC4(sctx, chaincert)) {
            FUNC11(chaincert);
            goto end;
        }
    }

    if (!FUNC10(FUNC15(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL))
            || !FUNC10(FUNC13(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    /*
     * Calling SSL_clear() first is not required but this tests that SSL_clear()
     * doesn't leak (when using enable-crypto-mdebug).
     */
    if (!FUNC10(FUNC7(serverssl)))
        goto end;

    testresult = 1;
 end:
    FUNC11(chaincert);
    FUNC8(serverssl);
    FUNC8(clientssl);
    FUNC5(sctx);
    FUNC5(cctx);

    return testresult;
}