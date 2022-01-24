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
struct TYPE_6__ {int enc; size_t keylen; TYPE_1__* hw; } ;
struct TYPE_7__ {TYPE_2__ base; } ;
struct TYPE_5__ {int (* init ) (TYPE_2__*,unsigned char const*,size_t) ;} ;
typedef  TYPE_2__ PROV_CIPHER_CTX ;
typedef  TYPE_3__ PROV_AES_XTS_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (void*,unsigned char const*,size_t) ; 
 int FUNC3 (TYPE_2__*,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC4(void *vctx, const unsigned char *key, size_t keylen,
                        const unsigned char *iv, size_t ivlen, int enc)
{
    PROV_AES_XTS_CTX *xctx = (PROV_AES_XTS_CTX *)vctx;
    PROV_CIPHER_CTX *ctx = &xctx->base;

    ctx->enc = enc;

    if (iv != NULL) {
        if (!FUNC2(vctx, iv, ivlen))
            return 0;
    }
    if (key != NULL) {
        if (keylen != ctx->keylen) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
        if (!FUNC1(key, keylen / 2, enc))
            return 0;
        return ctx->hw->init(ctx, key, keylen);
    }
    return 1;
}