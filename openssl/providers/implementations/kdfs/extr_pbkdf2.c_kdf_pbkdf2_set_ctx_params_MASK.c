#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct TYPE_11__ {int lower_bound_checks; int iter; int /*<<< orphan*/  salt_len; int /*<<< orphan*/  salt; int /*<<< orphan*/  pass_len; int /*<<< orphan*/  pass; int /*<<< orphan*/  digest; int /*<<< orphan*/  provctx; } ;
struct TYPE_10__ {scalar_t__ data_size; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_2__ KDF_PBKDF2 ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int KDF_PBKDF2_MIN_ITERATIONS ; 
 scalar_t__ KDF_PBKDF2_MIN_SALT_LEN ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_ITER ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_PASSWORD ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_PKCS5 ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SALT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int*) ; 
 TYPE_1__* FUNC3 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_INVALID_ITERATION_COUNT ; 
 int /*<<< orphan*/  PROV_R_INVALID_SALT_LENGTH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__ const*) ; 

__attribute__((used)) static int FUNC7(void *vctx, const OSSL_PARAM params[])
{
    const OSSL_PARAM *p;
    KDF_PBKDF2 *ctx = vctx;
    OPENSSL_CTX *provctx = FUNC4(ctx->provctx);
    int pkcs5;
    uint64_t iter, min_iter;

    if (!FUNC5(&ctx->digest, params, provctx))
        return 0;

    if ((p = FUNC3(params, OSSL_KDF_PARAM_PKCS5)) != NULL) {
        if (!FUNC1(p, &pkcs5))
            return 0;
        ctx->lower_bound_checks = pkcs5 == 0;
    }

    if ((p = FUNC3(params, OSSL_KDF_PARAM_PASSWORD)) != NULL)
        if (!FUNC6(&ctx->pass, &ctx->pass_len, p))
            return 0;

    if ((p = FUNC3(params, OSSL_KDF_PARAM_SALT)) != NULL) {
        if (ctx->lower_bound_checks != 0
            && p->data_size < KDF_PBKDF2_MIN_SALT_LEN) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_SALT_LENGTH);
            return 0;
        }
        if (!FUNC6(&ctx->salt, &ctx->salt_len,p))
            return 0;
    }

    if ((p = FUNC3(params, OSSL_KDF_PARAM_ITER)) != NULL) {
        if (!FUNC2(p, &iter))
            return 0;
        min_iter = ctx->lower_bound_checks != 0 ? KDF_PBKDF2_MIN_ITERATIONS : 1;
        if (iter < min_iter) {
            FUNC0(ERR_LIB_PROV, PROV_R_INVALID_ITERATION_COUNT);
            return 0;
        }
        ctx->iter = iter;
    }
    return 1;
}