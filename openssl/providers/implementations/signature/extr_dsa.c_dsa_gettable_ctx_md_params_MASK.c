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
struct TYPE_2__ {int /*<<< orphan*/ * md; } ;
typedef  TYPE_1__ PROV_DSA_CTX ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const OSSL_PARAM *FUNC1(void *vpdsactx)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;

    if (pdsactx->md == NULL)
        return 0;

    return FUNC0(pdsactx->md);
}