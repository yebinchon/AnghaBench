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
struct TYPE_3__ {int /*<<< orphan*/  lower_bound_checks; int /*<<< orphan*/  iter; int /*<<< orphan*/  digest; int /*<<< orphan*/  provctx; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_1__ KDF_PBKDF2 ;

/* Variables and functions */
 int /*<<< orphan*/  OSSL_KDF_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_PARAM_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PKCS5_DEFAULT_ITER ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SN_sha1 ; 
 int /*<<< orphan*/  kdf_pbkdf2_default_checks ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(KDF_PBKDF2 *ctx)
{
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };
    OPENSSL_CTX *provctx = FUNC1(ctx->provctx);

    params[0] = FUNC0(OSSL_KDF_PARAM_DIGEST,
                                                 SN_sha1, 0);
    if (!FUNC2(&ctx->digest, params, provctx))
        /* This is an error, but there is no way to indicate such directly */
        FUNC3(&ctx->digest);
    ctx->iter = PKCS5_DEFAULT_ITER;
    ctx->lower_bound_checks = kdf_pbkdf2_default_checks;
}