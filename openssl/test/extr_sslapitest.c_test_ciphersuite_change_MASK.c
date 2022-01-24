#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_2__ const* cipher; int /*<<< orphan*/  cipher_id; } ;
typedef  TYPE_1__ SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  TYPE_2__ SSL_CIPHER ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_ERROR_SSL ; 
 int /*<<< orphan*/  SSL_ERROR_WANT_READ ; 
 int /*<<< orphan*/  SSL_R_CIPHERSUITE_DIGEST_HAS_CHANGED ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_2__* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 

__attribute__((used)) static int FUNC19(void)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    SSL_SESSION *clntsess = NULL;
    int testresult = 0;
    const SSL_CIPHER *aes_128_gcm_sha256 = NULL;

    /* Create a session based on SHA-256 */
    if (!FUNC13(FUNC17(FUNC15(), FUNC14(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey))
            || !FUNC13(FUNC3(cctx,
                                                   "TLS_AES_128_GCM_SHA256"))
            || !FUNC13(FUNC18(sctx, cctx, &serverssl,
                                          &clientssl, NULL, NULL))
            || !FUNC13(FUNC16(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    clntsess = FUNC7(clientssl);
    /* Save for later */
    aes_128_gcm_sha256 = FUNC5(clntsess);
    FUNC10(clientssl);
    FUNC10(serverssl);
    FUNC6(serverssl);
    FUNC6(clientssl);
    serverssl = clientssl = NULL;

# if !defined(OPENSSL_NO_CHACHA) && !defined(OPENSSL_NO_POLY1305)
    /* Check we can resume a session with a different SHA-256 ciphersuite */
    if (!FUNC13(FUNC3(cctx,
                                            "TLS_CHACHA20_POLY1305_SHA256"))
            || !FUNC13(FUNC18(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL))
            || !FUNC13(FUNC9(clientssl, clntsess))
            || !FUNC13(FUNC16(serverssl, clientssl,
                                                SSL_ERROR_NONE))
            || !FUNC13(FUNC8(clientssl)))
        goto end;

    FUNC4(clntsess);
    clntsess = FUNC7(clientssl);
    FUNC10(clientssl);
    FUNC10(serverssl);
    FUNC6(serverssl);
    FUNC6(clientssl);
    serverssl = clientssl = NULL;
# endif

    /*
     * Check attempting to resume a SHA-256 session with no SHA-256 ciphersuites
     * succeeds but does not resume.
     */
    if (!FUNC13(FUNC3(cctx, "TLS_AES_256_GCM_SHA384"))
            || !FUNC13(FUNC18(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL))
            || !FUNC13(FUNC9(clientssl, clntsess))
            || !FUNC13(FUNC16(serverssl, clientssl,
                                                SSL_ERROR_SSL))
            || !FUNC11(FUNC8(clientssl)))
        goto end;

    FUNC4(clntsess);
    clntsess = NULL;
    FUNC10(clientssl);
    FUNC10(serverssl);
    FUNC6(serverssl);
    FUNC6(clientssl);
    serverssl = clientssl = NULL;

    /* Create a session based on SHA384 */
    if (!FUNC13(FUNC3(cctx, "TLS_AES_256_GCM_SHA384"))
            || !FUNC13(FUNC18(sctx, cctx, &serverssl,
                                          &clientssl, NULL, NULL))
            || !FUNC13(FUNC16(serverssl, clientssl,
                                                SSL_ERROR_NONE)))
        goto end;

    clntsess = FUNC7(clientssl);
    FUNC10(clientssl);
    FUNC10(serverssl);
    FUNC6(serverssl);
    FUNC6(clientssl);
    serverssl = clientssl = NULL;

    if (!FUNC13(FUNC3(cctx,
                   "TLS_AES_128_GCM_SHA256:TLS_AES_256_GCM_SHA384"))
            || !FUNC13(FUNC3(sctx,
                                                   "TLS_AES_256_GCM_SHA384"))
            || !FUNC13(FUNC18(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL))
            || !FUNC13(FUNC9(clientssl, clntsess))
               /*
                * We use SSL_ERROR_WANT_READ below so that we can pause the
                * connection after the initial ClientHello has been sent to
                * enable us to make some session changes.
                */
            || !FUNC11(FUNC16(serverssl, clientssl,
                                                SSL_ERROR_WANT_READ)))
        goto end;

    /* Trick the client into thinking this session is for a different digest */
    clntsess->cipher = aes_128_gcm_sha256;
    clntsess->cipher_id = clntsess->cipher->id;

    /*
     * Continue the previously started connection. Server has selected a SHA-384
     * ciphersuite, but client thinks the session is for SHA-256, so it should
     * bail out.
     */
    if (!FUNC11(FUNC16(serverssl, clientssl,
                                                SSL_ERROR_SSL))
            || !FUNC12(FUNC0(FUNC1()),
                            SSL_R_CIPHERSUITE_DIGEST_HAS_CHANGED))
        goto end;

    testresult = 1;

 end:
    FUNC4(clntsess);
    FUNC6(serverssl);
    FUNC6(clientssl);
    FUNC2(sctx);
    FUNC2(cctx);

    return testresult;
}