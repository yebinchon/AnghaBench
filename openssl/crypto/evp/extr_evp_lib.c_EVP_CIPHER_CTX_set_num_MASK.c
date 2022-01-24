#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int num; int /*<<< orphan*/  provctx; int /*<<< orphan*/  cipher; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_1__ EVP_CIPHER_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_NUM ; 
 int /*<<< orphan*/  OSSL_PARAM_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(EVP_CIPHER_CTX *ctx, int num)
{
    int ok;
    unsigned int n = (unsigned int)num;
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };

    params[0] = FUNC0(OSSL_CIPHER_PARAM_NUM, &n);
    ok = FUNC1(ctx->cipher, ctx->provctx, params);

    if (ok != 0)
        ctx->num = (int)n;
    return ok != 0;
}