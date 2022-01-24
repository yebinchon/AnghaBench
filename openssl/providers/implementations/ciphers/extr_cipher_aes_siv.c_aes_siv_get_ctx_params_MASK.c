#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ data_type; scalar_t__ data_size; } ;
struct TYPE_10__ {int /*<<< orphan*/  byte; } ;
struct TYPE_11__ {TYPE_1__ tag; } ;
struct TYPE_12__ {scalar_t__ taglen; scalar_t__ keylen; int /*<<< orphan*/  enc; TYPE_2__ siv; } ;
typedef  TYPE_2__ SIV128_CONTEXT ;
typedef  TYPE_3__ PROV_AES_SIV_CTX ;
typedef  TYPE_4__ OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TAG ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TAGLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_KEYLEN ; 
 scalar_t__ OSSL_PARAM_OCTET_STRING ; 
 TYPE_4__* FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_SET_PARAMETER ; 

__attribute__((used)) static int FUNC4(void *vctx, OSSL_PARAM params[])
{
    PROV_AES_SIV_CTX *ctx = (PROV_AES_SIV_CTX *)vctx;
    SIV128_CONTEXT *sctx = &ctx->siv;
    OSSL_PARAM *p;

    p = FUNC1(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != NULL && p->data_type == OSSL_PARAM_OCTET_STRING) {
        if (!ctx->enc
            || p->data_size != ctx->taglen
            || !FUNC2(p, &sctx->tag.byte, ctx->taglen)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_AEAD_TAGLEN);
    if (p != NULL && !FUNC3(p, ctx->taglen)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != NULL && !FUNC3(p, ctx->keylen)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    return 1;
}