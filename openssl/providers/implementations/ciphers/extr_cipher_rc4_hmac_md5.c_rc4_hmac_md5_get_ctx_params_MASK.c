#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ivlen; int /*<<< orphan*/  keylen; } ;
struct TYPE_4__ {int /*<<< orphan*/  tls_aad_pad_sz; TYPE_1__ base; } ;
typedef  TYPE_2__ PROV_RC4_HMAC_MD5_CTX ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_IVLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_KEYLEN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_SET_PARAMETER ; 

__attribute__((used)) static int FUNC3(void *vctx, OSSL_PARAM params[])
{
    PROV_RC4_HMAC_MD5_CTX *ctx = (PROV_RC4_HMAC_MD5_CTX *)vctx;
    OSSL_PARAM *p;

    p = FUNC1(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != NULL && !FUNC2(p, ctx->base.keylen)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }

    p = FUNC1(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != NULL && !FUNC2(p, ctx->base.ivlen)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_AEAD_TLS1_AAD_PAD);
    if (p != NULL && !FUNC2(p, ctx->tls_aad_pad_sz)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    return 1;
}