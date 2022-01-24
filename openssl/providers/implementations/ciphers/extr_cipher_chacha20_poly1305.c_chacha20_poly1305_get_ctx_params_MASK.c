#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ data_type; scalar_t__ data_size; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int /*<<< orphan*/  enc; } ;
struct TYPE_9__ {int /*<<< orphan*/  tag; TYPE_1__ base; int /*<<< orphan*/  tls_aad_pad_sz; int /*<<< orphan*/  tag_len; int /*<<< orphan*/  nonce_len; } ;
typedef  TYPE_2__ PROV_CHACHA20_POLY1305_CTX ;
typedef  TYPE_3__ OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  CHACHA20_POLY1305_KEYLEN ; 
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TAG ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TAGLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_IVLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_KEYLEN ; 
 scalar_t__ OSSL_PARAM_OCTET_STRING ; 
 TYPE_3__* FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ POLY1305_BLOCK_SIZE ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_SET_PARAMETER ; 
 int /*<<< orphan*/  PROV_R_INVALID_TAGLEN ; 
 int /*<<< orphan*/  PROV_R_TAG_NOTSET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC4(void *vctx, OSSL_PARAM params[])
{
    PROV_CHACHA20_POLY1305_CTX *ctx = (PROV_CHACHA20_POLY1305_CTX *)vctx;
    OSSL_PARAM *p;

    p = FUNC1(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != NULL) {
        if (!FUNC2(p, ctx->nonce_len)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != NULL && !FUNC2(p, CHACHA20_POLY1305_KEYLEN)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_AEAD_TAGLEN);
    if (p != NULL && !FUNC2(p, ctx->tag_len)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD);
    if (p != NULL && !FUNC2(p, ctx->tls_aad_pad_sz)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }

    p = FUNC1(params, OSSL_CIPHER_PARAM_AEAD_TAG);
    if (p != NULL) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
            return 0;
        }
        if (!ctx->base.enc) {
            FUNC0(ERR_LIB_PROV, PROV_R_TAG_NOTSET);
            return 0;
        }
        if (p->data_size == 0 || p->data_size > POLY1305_BLOCK_SIZE) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_TAGLEN);
            return 0;
        }
        FUNC3(p->data, ctx->tag, p->data_size);
    }

    return 1;
}