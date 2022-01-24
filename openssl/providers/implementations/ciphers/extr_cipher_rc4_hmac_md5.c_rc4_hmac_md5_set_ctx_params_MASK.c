#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {size_t (* tls_init ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* init_mackey ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_13__ {size_t keylen; size_t ivlen; } ;
struct TYPE_12__ {scalar_t__ data_type; int /*<<< orphan*/  data_size; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {size_t tls_aad_pad_sz; TYPE_3__ base; } ;
typedef  TYPE_1__ PROV_RC4_HMAC_MD5_CTX ;
typedef  TYPE_2__ OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_9__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TLS1_AAD ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_IVLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_KEYLEN ; 
 scalar_t__ OSSL_PARAM_OCTET_STRING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*,size_t*) ; 
 TYPE_2__* FUNC3 (TYPE_2__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_GET_PARAMETER ; 
 int /*<<< orphan*/  PROV_R_INVALID_DATA ; 
 int /*<<< orphan*/  PROV_R_INVALID_IV_LENGTH ; 
 int /*<<< orphan*/  PROV_R_INVALID_KEY_LENGTH ; 
 size_t FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *vctx, const OSSL_PARAM params[])
{
    PROV_RC4_HMAC_MD5_CTX *ctx = (PROV_RC4_HMAC_MD5_CTX *)vctx;
    const OSSL_PARAM *p;
    size_t sz;

    p = FUNC3(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != NULL) {
        if (!FUNC2(p, &sz)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (ctx->base.keylen != sz) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_KEY_LENGTH);
            return 0;
        }
    }

    p = FUNC3(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != NULL) {
        if (!FUNC2(p, &sz)) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        if (ctx->base.ivlen != sz) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_IV_LENGTH);
            return 0;
        }
    }

    p = FUNC3(params, OSSL_CIPHER_PARAM_AEAD_TLS1_AAD);
    if (p != NULL) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        sz = FUNC1(ctx)->tls_init(&ctx->base, p->data, p->data_size);
        if (sz == 0) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_DATA);
            return 0;
        }
        ctx->tls_aad_pad_sz = sz;
    }
    p = FUNC3(params, OSSL_CIPHER_PARAM_AEAD_TLS1_AAD);
    if (p != NULL) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_GET_PARAMETER);
            return 0;
        }
        FUNC1(ctx)->init_mackey(&ctx->base, p->data, p->data_size);
    }
    return 1;
}