#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {size_t data_size; } ;
struct TYPE_8__ {size_t ivlen; size_t keylen; size_t taglen; int iv_gen; int iv_gen_rand; size_t tls_aad_pad_sz; int /*<<< orphan*/  buf; int /*<<< orphan*/  enc; int /*<<< orphan*/  iv; } ;
typedef  TYPE_1__ PROV_GCM_CTX ;
typedef  TYPE_2__ OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t EVP_GCM_TLS_TAG_LEN ; 
 size_t GCM_TAG_MAX_SIZE ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TAG ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TAGLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_IV ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_IVLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_KEYLEN ; 
 TYPE_2__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_SET_PARAMETER ; 
 int /*<<< orphan*/  PROV_R_INVALID_IV_LENGTH ; 
 int /*<<< orphan*/  PROV_R_INVALID_TAG ; 
 size_t UNINITIALISED_SIZET ; 

int FUNC4(void *vctx, OSSL_PARAM params[])
{
    PROV_GCM_CTX *ctx = (PROV_GCM_CTX *)vctx;
    OSSL_PARAM *p;
    size_t sz;

    p = FUNC1(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != NULL && !FUNC3(p, ctx->ivlen)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != NULL && !FUNC3(p, ctx->keylen)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_AEAD_TAGLEN);
    if (p != NULL) {
        size_t taglen = (ctx->taglen != UNINITIALISED_SIZET) ? ctx->taglen :
                         GCM_TAG_MAX_SIZE;

        if (!FUNC3(p, taglen)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }

    p = FUNC1(params, OSSL_CIPHER_PARAM_IV);
    if (p != NULL) {
        if (ctx->iv_gen != 1 && ctx->iv_gen_rand != 1)
            return 0;
        if (ctx->ivlen != p->data_size) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_IV_LENGTH);
            return 0;
        }
        if (!FUNC2(p, ctx->iv, ctx->ivlen)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }

    p = FUNC1(params, OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD);
    if (p != NULL && !FUNC3(p, ctx->tls_aad_pad_sz)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != NULL) {
        sz = p->data_size;
        if (sz == 0
            || sz > EVP_GCM_TLS_TAG_LEN
            || !ctx->enc
            || ctx->taglen == UNINITIALISED_SIZET) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_TAG);
            return 0;
        }
        if (!FUNC2(p, ctx->buf, sz)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }

    return 1;
}