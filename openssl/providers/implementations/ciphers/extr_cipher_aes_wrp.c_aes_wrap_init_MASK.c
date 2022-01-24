#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  block128_f ;
struct TYPE_5__ {int /*<<< orphan*/  ks; } ;
struct TYPE_7__ {TYPE_1__ ks; int /*<<< orphan*/  wrapfn; } ;
struct TYPE_6__ {int enc; size_t keylen; scalar_t__ pad; int /*<<< orphan*/  block; } ;
typedef  TYPE_2__ PROV_CIPHER_CTX ;
typedef  TYPE_3__ PROV_AES_WRAP_CTX ;

/* Variables and functions */
 scalar_t__ AES_decrypt ; 
 scalar_t__ AES_encrypt ; 
 int /*<<< orphan*/  FUNC0 (unsigned char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CRYPTO_128_unwrap ; 
 int /*<<< orphan*/  CRYPTO_128_unwrap_pad ; 
 int /*<<< orphan*/  CRYPTO_128_wrap ; 
 int /*<<< orphan*/  CRYPTO_128_wrap_pad ; 
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC4(void *vctx, const unsigned char *key,
                         size_t keylen, const unsigned char *iv,
                         size_t ivlen, int enc)
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
    PROV_AES_WRAP_CTX *wctx = (PROV_AES_WRAP_CTX *)vctx;

    ctx->enc = enc;
    ctx->block = enc ? (block128_f)AES_encrypt : (block128_f)AES_decrypt;
    if (ctx->pad)
        wctx->wrapfn = enc ? CRYPTO_128_wrap_pad : CRYPTO_128_unwrap_pad;
    else
        wctx->wrapfn = enc ? CRYPTO_128_wrap : CRYPTO_128_unwrap;

    if (iv != NULL) {
        if (!FUNC3(ctx, iv, ivlen))
            return 0;
    }
    if (key != NULL) {
        if (keylen != ctx->keylen) {
           FUNC2(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
           return 0;
        }
        if (ctx->enc)
            FUNC1(key, keylen * 8, &wctx->ks.ks);
        else
            FUNC0(key, keylen * 8, &wctx->ks.ks);
    }
    return 1;
}