#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int enc; int iv_set; size_t keylen; TYPE_1__* hw; int /*<<< orphan*/  iv; } ;
struct TYPE_5__ {int (* setkey ) (TYPE_2__*,unsigned char const*,size_t) ;} ;
typedef  TYPE_2__ PROV_CCM_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_INVALID_IVLEN ; 
 int /*<<< orphan*/  PROV_R_INVALID_KEYLEN ; 
 size_t FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 
 int FUNC3 (TYPE_2__*,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC4(void *vctx, const unsigned char *key, size_t keylen,
                    const unsigned char *iv, size_t ivlen, int enc)
{
    PROV_CCM_CTX *ctx = (PROV_CCM_CTX *)vctx;

    ctx->enc = enc;

    if (iv != NULL) {
        if (ivlen != FUNC1(ctx)) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_IVLEN);
            return 0;
        }
        FUNC2(ctx->iv, iv, ivlen);
        ctx->iv_set = 1;
    }
    if (key != NULL) {
        if (keylen != ctx->keylen) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_KEYLEN);
            return 0;
        }
        return ctx->hw->setkey(ctx, key, keylen);
    }
    return 1;
}