#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_2__* pkey; TYPE_3__* data; } ;
struct TYPE_10__ {scalar_t__ pad_mode; unsigned char* tbuf; int /*<<< orphan*/  mgf1md; int /*<<< orphan*/  md; int /*<<< orphan*/  oaep_labellen; int /*<<< orphan*/  oaep_label; } ;
struct TYPE_8__ {int /*<<< orphan*/  rsa; } ;
struct TYPE_9__ {TYPE_1__ pkey; } ;
typedef  TYPE_3__ RSA_PKEY_CTX ;
typedef  TYPE_4__ EVP_PKEY_CTX ;

/* Variables and functions */
 scalar_t__ RSA_NO_PADDING ; 
 scalar_t__ RSA_PKCS1_OAEP_PADDING ; 
 int FUNC0 (unsigned char*,int,unsigned char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (size_t,unsigned char const*,unsigned char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC7(EVP_PKEY_CTX *ctx,
                            unsigned char *out, size_t *outlen,
                            const unsigned char *in, size_t inlen)
{
    int ret;
    RSA_PKEY_CTX *rctx = ctx->data;

    if (rctx->pad_mode == RSA_PKCS1_OAEP_PADDING) {
        if (!FUNC6(rctx, ctx))
            return -1;
        ret = FUNC1(inlen, in, rctx->tbuf,
                                  ctx->pkey->pkey.rsa, RSA_NO_PADDING);
        if (ret <= 0)
            return ret;
        ret = FUNC0(out, ret, rctx->tbuf,
                                                ret, ret,
                                                rctx->oaep_label,
                                                rctx->oaep_labellen,
                                                rctx->md, rctx->mgf1md);
    } else {
        ret = FUNC1(inlen, in, out, ctx->pkey->pkey.rsa,
                                  rctx->pad_mode);
    }
    *outlen = FUNC5(FUNC3(ret), *outlen, ret);
    ret = FUNC4(FUNC2(ret), ret, 1);
    return ret;
}