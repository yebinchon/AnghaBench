#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct gmac_data_st {int /*<<< orphan*/  cipher; int /*<<< orphan*/  provctx; int /*<<< orphan*/ * ctx; } ;
struct TYPE_6__ {scalar_t__ data_type; size_t data_size; int /*<<< orphan*/ * data; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ EVP_CIPH_GCM_MODE ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_SET_IVLEN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_R_CIPHER_NOT_GCM_MODE ; 
 int /*<<< orphan*/  EVP_R_INVALID_KEY_LENGTH ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_IV ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_KEY ; 
 scalar_t__ OSSL_PARAM_OCTET_STRING ; 
 TYPE_1__* FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(void *vmacctx, const OSSL_PARAM params[])
{
    struct gmac_data_st *macctx = vmacctx;
    EVP_CIPHER_CTX *ctx = macctx->ctx;
    OPENSSL_CTX *provctx = FUNC6(macctx->provctx);
    const OSSL_PARAM *p;

   if (ctx == NULL
        || !FUNC9(&macctx->cipher, params, provctx))
        return 0;

    if (FUNC3(FUNC7(&macctx->cipher))
        != EVP_CIPH_GCM_MODE) {
        FUNC0(ERR_LIB_PROV, EVP_R_CIPHER_NOT_GCM_MODE);
        return 0;
    }
    if (!FUNC4(ctx, FUNC7(&macctx->cipher),
                            FUNC8(&macctx->cipher), NULL,
                            NULL))
        return 0;

    if ((p = FUNC5(params, OSSL_MAC_PARAM_KEY)) != NULL) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING)
            return 0;

        if (p->data_size != (size_t)FUNC2(ctx)) {
            FUNC0(ERR_LIB_PROV, EVP_R_INVALID_KEY_LENGTH);
            return 0;
        }
        if (!FUNC4(ctx, NULL, NULL, p->data, NULL))
            return 0;
    }
    if ((p = FUNC5(params, OSSL_MAC_PARAM_IV)) != NULL) {
        if (p->data_type != OSSL_PARAM_OCTET_STRING)
            return 0;

        if (!FUNC1(ctx, EVP_CTRL_AEAD_SET_IVLEN,
                                 p->data_size, NULL)
            || !FUNC4(ctx, NULL, NULL, NULL, p->data))
            return 0;
    }
    return 1;
}