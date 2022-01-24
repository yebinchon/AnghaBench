#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_2__* data; } ;
struct TYPE_11__ {int /*<<< orphan*/ * collected_info; int /*<<< orphan*/ * collected_seed; int /*<<< orphan*/ * kctx; } ;
struct TYPE_10__ {char const* key; int /*<<< orphan*/  data; int /*<<< orphan*/  data_size; } ;
typedef  TYPE_1__ OSSL_PARAM ;
typedef  TYPE_2__ EVP_PKEY_KDF_CTX ;
typedef  TYPE_3__ EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;
typedef  int /*<<< orphan*/  EVP_KDF ;
typedef  int /*<<< orphan*/  BUF_MEM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* OSSL_KDF_PARAM_DIGEST ; 
 char* OSSL_KDF_PARAM_INFO ; 
 char* OSSL_KDF_PARAM_SCRYPT_N ; 
 char* OSSL_KDF_PARAM_SEED ; 
 TYPE_1__ OSSL_PARAM_END ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__ const*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(EVP_PKEY_CTX *ctx, const char *type,
                             const char *value)
{
    EVP_PKEY_KDF_CTX *pkctx = ctx->data;
    EVP_KDF_CTX *kctx = pkctx->kctx;
    const EVP_KDF *kdf = FUNC0(kctx);
    BUF_MEM **collector = NULL;
    const OSSL_PARAM *defs = FUNC2(kdf);
    OSSL_PARAM params[2] = { OSSL_PARAM_END, OSSL_PARAM_END };
    int ok = 0;

    /* Deal with ctrl name aliasing */
    if (FUNC6(type, "md") == 0)
        type = OSSL_KDF_PARAM_DIGEST;
    /* scrypt uses 'N', params uses 'n' */
    if (FUNC6(type, "N") == 0)
        type = OSSL_KDF_PARAM_SCRYPT_N;

    if (!FUNC4(&params[0], defs, type,
                                       value, FUNC7(value)))
        return 0;

    /*
     * We do the same special casing of seed and info here as in
     * pkey_kdf_ctrl()
     */
    if (FUNC6(params[0].key, OSSL_KDF_PARAM_SEED) == 0)
        collector = &pkctx->collected_seed;
    else if (FUNC6(params[0].key, OSSL_KDF_PARAM_INFO) == 0)
        collector = &pkctx->collected_info;

    if (collector != NULL)
        ok = FUNC5(collector, params[0].data, params[0].data_size);
    else
        ok = FUNC1(kctx, params);
    FUNC3(params[0].data);
    return ok;
}