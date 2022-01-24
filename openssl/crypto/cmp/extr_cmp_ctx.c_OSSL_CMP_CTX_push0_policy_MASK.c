#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * policies; } ;
typedef  int /*<<< orphan*/  POLICYINFO ;
typedef  TYPE_1__ OSSL_CMP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  CMP_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(OSSL_CMP_CTX *ctx, POLICYINFO *pinfo)
{
    if (ctx == NULL || pinfo == NULL) {
        FUNC1(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }

    if (ctx->policies == NULL
            && (ctx->policies = FUNC0()) == NULL)
        return 0;

    return FUNC2(ctx->policies, pinfo);
}