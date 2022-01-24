#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  keylen; int /*<<< orphan*/  num; int /*<<< orphan*/  ivlen; int /*<<< orphan*/  oiv; int /*<<< orphan*/  pad; } ;
typedef  TYPE_1__ PROV_CIPHER_CTX ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_IV ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_IVLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_KEYLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_NUM ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_PADDING ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_SET_PARAMETER ; 

int FUNC6(void *vctx, OSSL_PARAM params[])
{
    PROV_CIPHER_CTX *ctx = (PROV_CIPHER_CTX *)vctx;
    OSSL_PARAM *p;

    p = FUNC1(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != NULL && !FUNC4(p, ctx->ivlen)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_PADDING);
    if (p != NULL && !FUNC5(p, ctx->pad)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_IV);
    if (p != NULL
        && !FUNC2(p, &ctx->oiv, ctx->ivlen)
        && !FUNC3(p, &ctx->oiv, ctx->ivlen)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_NUM);
    if (p != NULL && !FUNC5(p, ctx->num)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != NULL && !FUNC4(p, ctx->keylen)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    return 1;
}