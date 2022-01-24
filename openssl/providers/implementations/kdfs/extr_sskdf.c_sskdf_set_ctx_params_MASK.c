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
struct TYPE_2__ {size_t out_len; int /*<<< orphan*/  salt_len; int /*<<< orphan*/  salt; int /*<<< orphan*/  info_len; int /*<<< orphan*/  info; int /*<<< orphan*/  secret_len; int /*<<< orphan*/  secret; int /*<<< orphan*/  macctx; int /*<<< orphan*/  digest; int /*<<< orphan*/  provctx; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_1__ KDF_SSKDF ;

/* Variables and functions */
 int /*<<< orphan*/  OSSL_KDF_PARAM_INFO ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_KEY ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_MAC_SIZE ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SALT ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SECRET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,size_t*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC6(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    KDF_SSKDF *ctx = vctx;
    OPENSSL_CTX *libctx = FUNC2(ctx->provctx);
    size_t sz;

    if (!FUNC3(&ctx->digest, params, libctx))
        return 0;

    if (!FUNC4(&ctx->macctx, params,
                                           NULL, NULL, NULL, libctx))
        return 0;

    if ((p = FUNC1(params, OSSL_KDF_PARAM_SECRET)) != NULL
        || (p = FUNC1(params, OSSL_KDF_PARAM_KEY)) != NULL)
        if (!FUNC5(&ctx->secret, &ctx->secret_len, p))
            return 0;

    if ((p = FUNC1(params, OSSL_KDF_PARAM_INFO)) != NULL)
        if (!FUNC5(&ctx->info, &ctx->info_len, p))
            return 0;

    if ((p = FUNC1(params, OSSL_KDF_PARAM_SALT)) != NULL)
        if (!FUNC5(&ctx->salt, &ctx->salt_len, p))
            return 0;

    if ((p = FUNC1(params, OSSL_KDF_PARAM_MAC_SIZE))
        != NULL) {
        if (!FUNC0(p, &sz) || sz == 0)
            return 0;
        ctx->out_len = sz;
    }
    return 1;
}