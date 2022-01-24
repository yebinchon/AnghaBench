#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  compiler_ctx_t ;
struct TYPE_4__ {TYPE_2__* argument_list; int /*<<< orphan*/  expression; } ;
typedef  TYPE_1__ call_expression_t ;
struct TYPE_5__ {int /*<<< orphan*/  expr; struct TYPE_5__* next; } ;
typedef  TYPE_2__ argument_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_new ; 
 int /*<<< orphan*/  OP_pop ; 
 int /*<<< orphan*/  OP_push_acc ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC4(compiler_ctx_t *ctx, call_expression_t *expr)
{
    unsigned arg_cnt = 0;
    argument_t *arg;
    HRESULT hres;

    hres = FUNC1(ctx, expr->expression, TRUE);
    if(FUNC0(hres))
        return hres;

    for(arg = expr->argument_list; arg; arg = arg->next) {
        hres = FUNC1(ctx, arg->expr, TRUE);
        if(FUNC0(hres))
            return hres;
        arg_cnt++;
    }

    hres = FUNC3(ctx, OP_new, arg_cnt);
    if(FUNC0(hres))
        return hres;

    hres = FUNC3(ctx, OP_pop, arg_cnt+1);
    if(FUNC0(hres))
        return hres;

    return FUNC2(ctx, OP_push_acc) ? S_OK : E_OUTOFMEMORY;
}