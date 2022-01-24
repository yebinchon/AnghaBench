#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ data_size; scalar_t__ data_type; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {scalar_t__ ivlen; scalar_t__ keylen; int /*<<< orphan*/  enc; int /*<<< orphan*/  oiv; } ;
struct TYPE_10__ {scalar_t__ taglen; int /*<<< orphan*/  tag; TYPE_1__ base; } ;
typedef  TYPE_2__ PROV_AES_OCB_CTX ;
typedef  TYPE_3__ OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TAG ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TAGLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_IV ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_IVLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_KEYLEN ; 
 scalar_t__ OSSL_PARAM_OCTET_STRING ; 
 TYPE_3__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_GET_PARAMETER ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_SET_PARAMETER ; 
 int /*<<< orphan*/  PROV_R_INVALID_IV_LENGTH ; 
 int /*<<< orphan*/  PROV_R_INVALID_TAGLEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(void *vctx, OSSL_PARAM params[])
{
    PROV_AES_OCB_CTX *ctx = (PROV_AES_OCB_CTX *)vctx;
    OSSL_PARAM *p;

    p = FUNC1(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != NULL && !FUNC3(p, ctx->base.ivlen)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != NULL && !FUNC3(p, ctx->base.keylen)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_AEAD_TAGLEN);
    if (p != NULL) {
        if (!FUNC3(p, ctx->taglen)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }

    p = FUNC1(params, OSSL_CIPHER_PARAM_IV);
    if (p != NULL) {
        if (ctx->base.ivlen != p->data_size) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_IV_LENGTH);
            return 0;
        }
        if (!FUNC2(p, ctx->base.oiv, ctx->base.ivlen)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != NULL) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (!ctx->base.enc || p->data_size != ctx->taglen) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_TAGLEN);
            return 0;
        }
        FUNC4(p->data, ctx->tag, ctx->taglen);
    }
    return 1;
}