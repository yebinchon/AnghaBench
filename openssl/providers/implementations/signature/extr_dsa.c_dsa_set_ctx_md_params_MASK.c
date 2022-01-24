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
struct TYPE_2__ {int /*<<< orphan*/ * mdctx; } ;
typedef  TYPE_1__ PROV_DSA_CTX ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC1(void *vpdsactx, const OSSL_PARAM params[])
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;

    if (pdsactx->mdctx == NULL)
        return 0;

    return FUNC0(pdsactx->mdctx, params);
}