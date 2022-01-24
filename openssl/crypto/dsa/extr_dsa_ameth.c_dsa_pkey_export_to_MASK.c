#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * dsa; } ;
struct TYPE_5__ {TYPE_1__ pkey; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM_BLD ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_KEYMGMT ;
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_DSA_PRIV_KEY ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_DSA_PUB_KEY ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_FFC_G ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_FFC_P ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_FFC_Q ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC11(const EVP_PKEY *pk, EVP_KEYMGMT *keymgmt,
                                int want_domainparams)
{
    DSA *dsa = pk->pkey.dsa;
    OSSL_PARAM_BLD tmpl;
    const BIGNUM *p = FUNC1(dsa), *g = FUNC0(dsa);
    const BIGNUM *q = FUNC4(dsa), *pub_key = FUNC3(dsa);
    const BIGNUM *priv_key = FUNC2(dsa);
    OSSL_PARAM *params;
    void *provdata = NULL;

    if (p == NULL || q == NULL || g == NULL)
        return NULL;

    FUNC8(&tmpl);
    if (!FUNC9(&tmpl, OSSL_PKEY_PARAM_FFC_P, p)
        || !FUNC9(&tmpl, OSSL_PKEY_PARAM_FFC_Q, q)
        || !FUNC9(&tmpl, OSSL_PKEY_PARAM_FFC_G, g))
        return NULL;

    if (!want_domainparams) {
        /* A key must at least have a public part. */
        if (!FUNC9(&tmpl, OSSL_PKEY_PARAM_DSA_PUB_KEY,
                                    pub_key))
            return NULL;

        if (priv_key != NULL) {
            if (!FUNC9(&tmpl, OSSL_PKEY_PARAM_DSA_PRIV_KEY,
                                        priv_key))
                return NULL;
        }
    }

    params = FUNC10(&tmpl);

    /* We export, the provider imports */
    provdata = want_domainparams
        ? FUNC5(keymgmt, params)
        : FUNC6(keymgmt, params);

    FUNC7(params);
    return provdata;
}