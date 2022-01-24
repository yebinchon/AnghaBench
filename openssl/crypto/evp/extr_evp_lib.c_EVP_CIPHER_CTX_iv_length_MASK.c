#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cipher; int /*<<< orphan*/  provctx; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_1__ EVP_CIPHER_CTX ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int EVP_CIPH_CUSTOM_IV_LENGTH ; 
 int /*<<< orphan*/  EVP_CTRL_GET_IVLEN ; 
 int EVP_CTRL_RET_UNSUPPORTED ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_IVLEN ; 
 int /*<<< orphan*/  OSSL_PARAM_END ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(const EVP_CIPHER_CTX *ctx)
{
    int rv, len = FUNC2(ctx->cipher);
    size_t v = len;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    params[0] = FUNC3(OSSL_CIPHER_PARAM_IVLEN, &v);
    rv = FUNC4(ctx->cipher, ctx->provctx, params);
    if (rv == EVP_CTRL_RET_UNSUPPORTED)
        goto legacy;
    return rv != 0 ? (int)v : -1;
    /* TODO (3.0) Remove legacy support */
legacy:
    if ((FUNC1(ctx->cipher) & EVP_CIPH_CUSTOM_IV_LENGTH) != 0) {
        rv = FUNC0((EVP_CIPHER_CTX *)ctx, EVP_CTRL_GET_IVLEN,
                                 0, &len);
        return (rv == 1) ? len : -1;
    }
    return len;
}