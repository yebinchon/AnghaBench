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
struct TYPE_2__ {int /*<<< orphan*/  constant_len; int /*<<< orphan*/  constant; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  cipher; int /*<<< orphan*/  provctx; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_1__ KRB5KDF_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  OSSL_KDF_PARAM_CONSTANT ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_KEY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    KRB5KDF_CTX *ctx = vctx;
    OPENSSL_CTX *provctx = FUNC1(ctx->provctx);

    if (!FUNC3(&ctx->cipher, params, provctx))
        return 0;

    if ((p = FUNC0(params, OSSL_KDF_PARAM_KEY)) != NULL)
        if (!FUNC2(&ctx->key, &ctx->key_len, p))
            return 0;

    if ((p = FUNC0(params, OSSL_KDF_PARAM_CONSTANT))
        != NULL)
        if (!FUNC2(&ctx->constant, &ctx->constant_len, p))
            return 0;

    return 1;
}