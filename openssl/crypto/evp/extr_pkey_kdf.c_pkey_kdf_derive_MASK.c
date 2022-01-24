#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_3__* data; } ;
struct TYPE_9__ {TYPE_2__* collected_info; TYPE_1__* collected_seed; int /*<<< orphan*/ * kctx; } ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_7__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_3__ EVP_PKEY_KDF_CTX ;
typedef  TYPE_4__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_INFO ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_SEED ; 
 int /*<<< orphan*/  OSSL_PARAM_END ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(EVP_PKEY_CTX *ctx, unsigned char *key,
                           size_t *keylen)
{
    EVP_PKEY_KDF_CTX *pkctx = ctx->data;
    EVP_KDF_CTX *kctx = pkctx->kctx;
    size_t outlen = FUNC2(kctx);
    int r;

    if (pkctx->collected_seed != NULL) {
        OSSL_PARAM params[] = { OSSL_PARAM_END, OSSL_PARAM_END };

        params[0] =
            FUNC3(OSSL_KDF_PARAM_SEED,
                                              pkctx->collected_seed->data,
                                              pkctx->collected_seed->length);

        r = FUNC0(kctx, params);
        FUNC4(pkctx);
        if (!r)
            return 0;
    }
    if (pkctx->collected_info != NULL) {
        OSSL_PARAM params[] = { OSSL_PARAM_END, OSSL_PARAM_END };

        params[0] =
            FUNC3(OSSL_KDF_PARAM_INFO,
                                              pkctx->collected_info->data,
                                              pkctx->collected_info->length);

        r = FUNC0(kctx, params);
        FUNC4(pkctx);
        if (!r)
            return 0;
    }
    if (outlen == 0 || outlen == SIZE_MAX) {
        /* Variable-output algorithm */
        if (key == NULL)
            return 0;
    } else {
        /* Fixed-output algorithm */
        *keylen = outlen;
        if (key == NULL)
            return 1;
    }
    return FUNC1(kctx, key, *keylen);
}