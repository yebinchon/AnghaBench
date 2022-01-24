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
typedef  int /*<<< orphan*/  dummyrec ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  FUNC20 (char const*) ; 

__attribute__((used)) static int FUNC21(void)
{
    SSL_CTX *sctx = NULL, *cctx = NULL;
    SSL *sssl = NULL, *cssl = NULL;
    const char *msg = "Dummy";
    BIO *wbio = NULL;
    int ret = 0, len;
    char buf[80];
    unsigned char dummyrec[] = {
        0x17, 0x03, 0x03, 0x00, 0x05, 'D', 'u', 'm', 'm', 'y'
    };

    if (!FUNC14(FUNC17(FUNC15(), FUNC15(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto err;

    /*
     * Deliberately set the cipher lists for client and server to be different
     * to force a handshake failure.
     */
    if (!FUNC14(FUNC3(sctx, "AES128-SHA"))
            || !FUNC14(FUNC3(cctx, "AES256-SHA"))
            || !FUNC14(FUNC4(sctx,
                                                   "TLS_AES_128_GCM_SHA256"))
            || !FUNC14(FUNC4(cctx,
                                                   "TLS_AES_256_GCM_SHA384"))
            || !FUNC14(FUNC18(sctx, cctx, &sssl, &cssl, NULL,
                          NULL)))
        goto err;

    wbio = FUNC6(cssl);
    if (!FUNC13(wbio)) {
        FUNC19("Unexpected NULL bio received\n");
        goto err;
    }

    /* Connection should fail */
    if (!FUNC10(FUNC16(sssl, cssl, SSL_ERROR_NONE)))
        goto err;

    FUNC1();

    /* Inject a plaintext record from client to server */
    if (!FUNC11(FUNC0(wbio, dummyrec, sizeof(dummyrec)), 0))
        goto err;

    /* SSL_read()/SSL_write should fail because of a previous fatal error */
    if (!FUNC12(len = FUNC7(sssl, buf, sizeof(buf) - 1), 0)) {
        buf[len] = '\0';
        FUNC9("Unexpected success reading data: %s\n", buf);
        goto err;
    }
    if (!FUNC12(FUNC8(sssl, msg, FUNC20(msg)), 0))
        goto err;

    ret = 1;
 err:
    FUNC5(sssl);
    FUNC5(cssl);
    FUNC2(sctx);
    FUNC2(cctx);

    return ret;
}