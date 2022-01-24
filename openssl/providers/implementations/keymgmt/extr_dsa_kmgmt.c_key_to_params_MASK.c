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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_DSA_PRIV_KEY ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_DSA_PUB_KEY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(DSA *dsa, OSSL_PARAM params[])
{
    OSSL_PARAM *p;
    const BIGNUM *priv_key = NULL, *pub_key = NULL;

    if (dsa == NULL)
        return 0;
    if (!FUNC3(dsa, params))
        return 0;

    FUNC0(dsa, &pub_key, &priv_key);
    if ((p = FUNC1(params, OSSL_PKEY_PARAM_DSA_PRIV_KEY)) != NULL
        && !FUNC2(p, priv_key))
        return 0;
    if ((p = FUNC1(params, OSSL_PKEY_PARAM_DSA_PUB_KEY)) != NULL
        && !FUNC2(p, pub_key))
        return 0;

    return 1;
}