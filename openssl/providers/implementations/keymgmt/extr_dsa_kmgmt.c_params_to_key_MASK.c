#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  DSA ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_DSA_PRIV_KEY ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_DSA_PUB_KEY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(DSA *dsa, const OSSL_PARAM params[])
{
    const OSSL_PARAM *param_priv_key, *param_pub_key;
    BIGNUM *priv_key = NULL, *pub_key = NULL;

    if (dsa == NULL)
        return 0;

    if (!FUNC4(dsa, params))
        return 0;

    param_priv_key =
        FUNC3(params, OSSL_PKEY_PARAM_DSA_PRIV_KEY);
    param_pub_key =
        FUNC3(params, OSSL_PKEY_PARAM_DSA_PUB_KEY);

    /*
     * DSA documentation says that a public key must be present if a private key
     * is.
     */
    if (param_priv_key != NULL && param_pub_key == NULL)
        return 0;

    if ((param_priv_key != NULL
         && !FUNC2(param_priv_key, &priv_key))
        || (param_pub_key != NULL
            && !FUNC2(param_pub_key, &pub_key)))
        goto err;

    if (pub_key != NULL && !FUNC1(dsa, pub_key, priv_key))
        goto err;

    return 1;

 err:
    FUNC0(priv_key);
    FUNC0(pub_key);
    return 0;
}