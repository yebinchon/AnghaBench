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
struct TYPE_3__ {int /*<<< orphan*/  identifier; int /*<<< orphan*/  expression; } ;
typedef  TYPE_1__ member_expression_t ;
typedef  int /*<<< orphan*/  compiler_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_member ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC3(compiler_ctx_t *ctx, member_expression_t *expr)
{
    HRESULT hres;

    hres = FUNC1(ctx, expr->expression, TRUE);
    if(FUNC0(hres))
        return hres;

    return FUNC2(ctx, OP_member, expr->identifier);
}