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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,size_t,unsigned char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ EVP_PKEY_ED25519 ; 
 scalar_t__ EVP_PKEY_ED448 ; 
#define  EVP_PKEY_OP_SIGN 129 
#define  EVP_PKEY_OP_VERIFY 128 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*) ; 
 int TBUF_MAXSIZE ; 
 unsigned char* FUNC15 (size_t,char*) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static int FUNC16(int pkey_op, EVP_PKEY_CTX *ctx,
                        const EVP_MD *md, EVP_PKEY *pkey, BIO *in,
                        int filesize, unsigned char *sig, int siglen,
                        unsigned char **out, size_t *poutlen)
{
    int rv = 0;
    EVP_MD_CTX *mctx = NULL;
    unsigned char tbuf[TBUF_MAXSIZE];
    unsigned char *mbuf = NULL;
    int buf_len = 0;

    if ((mctx = FUNC11()) == NULL) {
        FUNC0(bio_err, "Error: out of memory\n");
        return rv;
    }
    FUNC12(mctx, ctx);

    /* Some algorithms only support oneshot digests */
    if (FUNC13(pkey) == EVP_PKEY_ED25519
            || FUNC13(pkey) == EVP_PKEY_ED448) {
        if (filesize < 0) {
            FUNC0(bio_err,
                       "Error: unable to determine file size for oneshot operation\n");
            goto end;
        }
        mbuf = FUNC15(filesize, "oneshot sign/verify buffer");
        switch(pkey_op) {
        case EVP_PKEY_OP_VERIFY:
            if (FUNC8(mctx, NULL, md, NULL, pkey) != 1)
                goto end;
            buf_len = FUNC1(in, mbuf, filesize);
            if (buf_len != filesize) {
                FUNC0(bio_err, "Error reading raw input data\n");
                goto end;
            }
            rv = FUNC6(mctx, sig, (size_t)siglen, mbuf, buf_len);
            break;
        case EVP_PKEY_OP_SIGN:
            if (FUNC4(mctx, NULL, md, NULL, pkey) != 1)
                goto end;
            buf_len = FUNC1(in, mbuf, filesize);
            if (buf_len != filesize) {
                FUNC0(bio_err, "Error reading raw input data\n");
                goto end;
            }
            rv = FUNC2(mctx, NULL, poutlen, mbuf, buf_len);
            if (rv == 1 && out != NULL) {
                *out = FUNC15(*poutlen, "buffer output");
                rv = FUNC2(mctx, *out, poutlen, mbuf, buf_len);
            }
            break;
        }
        goto end;
    }

    switch(pkey_op) {
    case EVP_PKEY_OP_VERIFY:
        if (FUNC8(mctx, NULL, md, NULL, pkey) != 1)
            goto end;
        for (;;) {
            buf_len = FUNC1(in, tbuf, TBUF_MAXSIZE);
            if (buf_len == 0)
                break;
            if (buf_len < 0) {
                FUNC0(bio_err, "Error reading raw input data\n");
                goto end;
            }
            rv = FUNC9(mctx, tbuf, (size_t)buf_len);
            if (rv != 1) {
                FUNC0(bio_err, "Error verifying raw input data\n");
                goto end;
            }
        }
        rv = FUNC7(mctx, sig, (size_t)siglen);
        break;
    case EVP_PKEY_OP_SIGN:
        if (FUNC4(mctx, NULL, md, NULL, pkey) != 1)
            goto end;
        for (;;) {
            buf_len = FUNC1(in, tbuf, TBUF_MAXSIZE);
            if (buf_len == 0)
                break;
            if (buf_len < 0) {
                FUNC0(bio_err, "Error reading raw input data\n");
                goto end;
            }
            rv = FUNC5(mctx, tbuf, (size_t)buf_len);
            if (rv != 1) {
                FUNC0(bio_err, "Error signing raw input data\n");
                goto end;
            }
        }
        rv = FUNC3(mctx, NULL, poutlen);
        if (rv == 1 && out != NULL) {
            *out = FUNC15(*poutlen, "buffer output");
            rv = FUNC3(mctx, *out, poutlen);
        }
        break;
    }

 end:
    FUNC14(mbuf);
    FUNC10(mctx);
    return rv;
}