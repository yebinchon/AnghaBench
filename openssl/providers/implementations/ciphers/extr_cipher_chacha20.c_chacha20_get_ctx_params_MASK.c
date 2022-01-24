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
 int /*<<< orphan*/  CHACHA20_IVLEN ; 
 int /*<<< orphan*/  CHACHA20_KEYLEN ; 
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_IVLEN ; 
 int /*<<< orphan*/  OSSL_CIPHER_PARAM_KEYLEN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_SET_PARAMETER ; 

__attribute__((used)) static int FUNC3(void *vctx, OSSL_PARAM params[])
{
    OSSL_PARAM *p;

    p = FUNC1(params, OSSL_CIPHER_PARAM_IVLEN);
    if (p != NULL && !FUNC2(p, CHACHA20_IVLEN)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }
    p = FUNC1(params, OSSL_CIPHER_PARAM_KEYLEN);
    if (p != NULL && !FUNC2(p, CHACHA20_KEYLEN)) {
        FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_SET_PARAMETER);
        return 0;
    }

    return 1;
}