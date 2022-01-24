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
typedef  int ssize_t ;
typedef  scalar_t__ off_t ;
struct TYPE_11__ {int /*<<< orphan*/  wbio; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  TYPE_1__ SSL ;
typedef  int /*<<< orphan*/  FILE ;
typedef  unsigned char BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (unsigned char*,unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,scalar_t__) ; 
 int /*<<< orphan*/  SENDFILE_CHUNK ; 
 scalar_t__ SENDFILE_SZ ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 scalar_t__ SSL_ERROR_WANT_READ ; 
 scalar_t__ SSL_ERROR_WANT_WRITE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int) ; 
 int FUNC12 (TYPE_1__*,unsigned char*,int) ; 
 int FUNC13 (TYPE_1__*,int,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**,TYPE_1__**,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int*,int*) ; 
 int FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int) ; 
 int FUNC26 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/  tmpfilename ; 

__attribute__((used)) static int FUNC27(void)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    unsigned char *buf, *buf_dst;
    BIO *out = NULL, *in = NULL;
    int cfd, sfd, ffd, err;
    ssize_t chunk_size = 0;
    off_t chunk_off = 0;
    int testresult = 0;
    FILE *ffdp;

    buf = FUNC6(SENDFILE_SZ);
    buf_dst = FUNC6(SENDFILE_SZ);
    if (!FUNC16(buf) || !FUNC16(buf_dst)
        || !FUNC17(FUNC23(&cfd, &sfd)))
        goto end;

    /* Skip this test if the platform does not support ktls */
    if (!FUNC25(sfd)) {
        testresult = 1;
        goto end;
    }

    /* Create a session based on SHA-256 */
    if (!FUNC17(FUNC21(FUNC19(),
                                       FUNC18(),
                                       TLS1_2_VERSION, TLS1_2_VERSION,
                                       &sctx, &cctx, cert, privkey))
        || !FUNC17(FUNC9(cctx,
                                              "AES128-GCM-SHA256"))
        || !FUNC17(FUNC22(sctx, cctx, &serverssl,
                                          &clientssl, sfd, cfd)))
        goto end;

    if (!FUNC17(FUNC20(serverssl, clientssl,
                                         SSL_ERROR_NONE))
        || !FUNC17(FUNC2(serverssl->wbio)))
        goto end;

    FUNC7(buf, SENDFILE_SZ);
    out = FUNC3(tmpfilename, "wb");
    if (!FUNC16(out))
        goto end;

    if (FUNC4(out, buf, SENDFILE_SZ) != SENDFILE_SZ)
        goto end;

    FUNC0(out);
    out = NULL;
    in = FUNC3(tmpfilename, "rb");
    FUNC1(in, &ffdp);
    ffd = FUNC24(ffdp);

    while (chunk_off < SENDFILE_SZ) {
        chunk_size = FUNC26(SENDFILE_CHUNK, SENDFILE_SZ - chunk_off);
        while ((err = FUNC13(serverssl,
                                   ffd,
                                   chunk_off,
                                   chunk_size,
                                   0)) != chunk_size) {
            if (FUNC11(serverssl, err) != SSL_ERROR_WANT_WRITE)
                goto end;
        }
        while ((err = FUNC12(clientssl,
                               buf_dst + chunk_off,
                               chunk_size)) != chunk_size) {
            if (FUNC11(clientssl, err) != SSL_ERROR_WANT_READ)
                goto end;
        }

        /* verify the payload */
        if (!FUNC15(buf_dst + chunk_off,
                         chunk_size,
                         buf + chunk_off,
                         chunk_size))
            goto end;

        chunk_off += chunk_size;
    }

    testresult = 1;
end:
    if (clientssl) {
        FUNC14(clientssl);
        FUNC10(clientssl);
    }
    if (serverssl) {
        FUNC14(serverssl);
        FUNC10(serverssl);
    }
    FUNC8(sctx);
    FUNC8(cctx);
    serverssl = clientssl = NULL;
    FUNC0(out);
    FUNC0(in);
    FUNC5(buf);
    FUNC5(buf_dst);
    return testresult;
}