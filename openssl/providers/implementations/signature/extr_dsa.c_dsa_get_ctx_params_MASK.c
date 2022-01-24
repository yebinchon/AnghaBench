#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * md; int /*<<< orphan*/  mdname; int /*<<< orphan*/  mdsize; } ;
typedef  TYPE_1__ PROV_DSA_CTX ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_SIGNATURE_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_SIGNATURE_PARAM_DIGEST_SIZE ; 

__attribute__((used)) static int FUNC4(void *vpdsactx, OSSL_PARAM *params)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;
    OSSL_PARAM *p;

    if (pdsactx == NULL || params == NULL)
        return 0;

    p = FUNC1(params, OSSL_SIGNATURE_PARAM_DIGEST_SIZE);
    if (p != NULL && !FUNC2(p, pdsactx->mdsize))
        return 0;

    p = FUNC1(params, OSSL_SIGNATURE_PARAM_DIGEST);
    if (p != NULL && !FUNC3(p, pdsactx->md == NULL
                                                    ? pdsactx->mdname
                                                    : FUNC0(pdsactx->md)))
        return 0;

    return 1;
}