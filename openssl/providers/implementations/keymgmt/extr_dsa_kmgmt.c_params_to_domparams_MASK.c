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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_FFC_G ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_FFC_P ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_FFC_Q ; 

__attribute__((used)) static int FUNC4(DSA *dsa, const OSSL_PARAM params[])
{
    const OSSL_PARAM *param_p, *param_q, *param_g;
    BIGNUM *p = NULL, *q = NULL, *g = NULL;

    if (dsa == NULL)
        return 0;

    param_p = FUNC3(params, OSSL_PKEY_PARAM_FFC_P);
    param_q = FUNC3(params, OSSL_PKEY_PARAM_FFC_Q);
    param_g = FUNC3(params, OSSL_PKEY_PARAM_FFC_G);

    if ((param_p != NULL && !FUNC2(param_p, &p))
        || (param_q != NULL && !FUNC2(param_q, &q))
        || (param_g != NULL && !FUNC2(param_g, &g)))
        goto err;

    if (!FUNC1(dsa, p, q, g))
        goto err;

    return 1;

 err:
    FUNC0(p);
    FUNC0(q);
    FUNC0(g);
    return 0;
}