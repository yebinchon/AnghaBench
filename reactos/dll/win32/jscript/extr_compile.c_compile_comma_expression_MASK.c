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
typedef  int /*<<< orphan*/  compiler_ctx_t ;
struct TYPE_3__ {int /*<<< orphan*/  expression2; int /*<<< orphan*/  expression1; } ;
typedef  TYPE_1__ binary_expression_t ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC2(compiler_ctx_t *ctx, binary_expression_t *expr, BOOL emit_ret)
{
    HRESULT hres;

    hres = FUNC1(ctx, expr->expression1, FALSE);
    if(FUNC0(hres))
        return hres;

    return FUNC1(ctx, expr->expression2, emit_ret);
}