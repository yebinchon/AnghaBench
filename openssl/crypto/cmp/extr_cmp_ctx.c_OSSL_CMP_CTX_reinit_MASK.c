#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int status; int failInfoCode; } ;
typedef  TYPE_1__ OSSL_CMP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC9(OSSL_CMP_CTX *ctx)
{
    if (ctx == NULL) {
        FUNC0(0, CMP_R_NULL_ARGUMENT);
        return 0;
    }

    ctx->status = -1;
    ctx->failInfoCode = -1;

    return FUNC4(ctx, NULL)
        && FUNC3(ctx, NULL)
        && FUNC6(ctx, NULL)
        && FUNC7(ctx, NULL)
        && FUNC5(ctx, NULL)
        && FUNC2(ctx, NULL)
        && FUNC1(ctx, NULL)
        && FUNC8(ctx, NULL);
}