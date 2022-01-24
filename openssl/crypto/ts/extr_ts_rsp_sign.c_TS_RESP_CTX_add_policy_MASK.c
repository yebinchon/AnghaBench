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
typedef  TYPE_1__ TS_RESP_CTX ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  TS_F_TS_RESP_CTX_ADD_POLICY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(TS_RESP_CTX *ctx, const ASN1_OBJECT *policy)
{
    ASN1_OBJECT *copy = NULL;

    if (ctx->policies == NULL
        && (ctx->policies = FUNC3()) == NULL)
        goto err;
    if ((copy = FUNC1(policy)) == NULL)
        goto err;
    if (!FUNC4(ctx->policies, copy))
        goto err;

    return 1;
 err:
    FUNC2(TS_F_TS_RESP_CTX_ADD_POLICY, ERR_R_MALLOC_FAILURE);
    FUNC0(copy);
    return 0;
}