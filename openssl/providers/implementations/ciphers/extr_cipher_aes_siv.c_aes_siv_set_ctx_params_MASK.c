#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ data_type; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {size_t keylen; TYPE_1__* hw; scalar_t__ enc; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* setspeed ) (TYPE_2__*,int) ;int /*<<< orphan*/  (* settag ) (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__ PROV_AES_SIV_CTX ;
typedef  TYPE_3__ OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TAG ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_KEYLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_SPEED ; 
 scalar_t__ OSSL_PARAM_OCTET_STRING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*,unsigned int*) ; 
 TYPE_3__* FUNC3 (TYPE_3__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_GET_PARAMETER ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC6(void *vctx, const OSSL_PARAM params[])
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;
    const OSSL_PARAM *p;
    unsigned int speed = 0;

    p = FUNC3(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != NULL) {
        if (ctx->enc)
            return 1;
        if (p->data_type != OSSL_PARAM_OCTET_STRING
            || !ctx->hw->settag(ctx, p->data, p->data_size)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
    }
    p = FUNC3(params, OSSL_CIPHER_PARAM_SPEED);
    if (p != NULL) {
        if (!FUNC2(p, &speed)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        ctx->hw->setspeed(ctx, (int)speed);
    }
    p = FUNC3(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != NULL) {
        size_t keylen;

        if (!FUNC1(p, &keylen)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        /* The key length can not be modified */
        if (keylen != ctx->keylen)
            return 0;
    }
    return 1;
}