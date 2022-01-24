#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int enc; size_t keylen; TYPE_1__* hw; } ;
struct TYPE_4__ {int (* initkey ) (TYPE_2__*,unsigned char const*,size_t) ;} ;
typedef  TYPE_2__ PROV_AES_SIV_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_INVALID_KEY_LENGTH ; 
 int FUNC1 (TYPE_2__*,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC2(void *vctx, const unsigned char *key, size_t keylen,
                    const unsigned char *iv, size_t ivlen, int enc)
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;

    ctx->enc = enc;

    if (iv != NULL)
        return 0;

    if (key != NULL) {
        if (keylen != ctx->keylen) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
        return ctx->hw->initkey(ctx, key, ctx->keylen);
    }
    return 1;
}