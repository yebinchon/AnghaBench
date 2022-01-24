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

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_DIGEST_PARAM_BLOCK_SIZE ; 
 int /*<<< orphan*/  OSSL_DIGEST_PARAM_FLAGS ; 
 int /*<<< orphan*/  OSSL_DIGEST_PARAM_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_SET_PARAMETER ; 

int FUNC4(OSSL_PARAM params[], size_t blksz, size_t paramsz,
                              unsigned long flags)
{
    OSSL_PARAM *p = NULL;

    p = FUNC1(params, OSSL_DIGEST_PARAM_BLOCK_SIZE);
    if (p != NULL && !FUNC2(p, blksz)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_DIGEST_PARAM_SIZE);
    if (p != NULL && !FUNC2(p, paramsz)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_DIGEST_PARAM_FLAGS);
    if (p != NULL && !FUNC3(p, flags)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    return 1;
}