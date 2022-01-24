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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_FFC_G ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_FFC_P ; 
 int /*<<< orphan*/  OSSL_PKEY_PARAM_FFC_Q ; 

__attribute__((used)) static int FUNC3(DSA *dsa, OSSL_PARAM params[])
{
    OSSL_PARAM *p;
    const BIGNUM *dsa_p = NULL, *dsa_q = NULL, *dsa_g = NULL;

    if (dsa == NULL)
        return 0;

    FUNC0(dsa, &dsa_p, &dsa_q, &dsa_g);
    if ((p = FUNC1(params, OSSL_PKEY_PARAM_FFC_P)) != NULL
        && !FUNC2(p, dsa_p))
        return 0;
    if ((p = FUNC1(params, OSSL_PKEY_PARAM_FFC_Q)) != NULL
        && !FUNC2(p, dsa_q))
        return 0;
    if ((p = FUNC1(params, OSSL_PKEY_PARAM_FFC_G)) != NULL
        && !FUNC2(p, dsa_g))
        return 0;

    return 1;
}