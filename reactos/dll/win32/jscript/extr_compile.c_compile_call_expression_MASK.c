#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsop_t ;
typedef  int /*<<< orphan*/  compiler_ctx_t ;
struct TYPE_11__ {TYPE_4__* argument_list; TYPE_6__* expression; } ;
typedef  TYPE_3__ call_expression_t ;
struct TYPE_12__ {TYPE_6__* expr; struct TYPE_12__* next; } ;
typedef  TYPE_4__ argument_t ;
struct TYPE_14__ {int /*<<< orphan*/  type; } ;
struct TYPE_10__ {TYPE_1__* arg; } ;
struct TYPE_13__ {TYPE_2__ u; } ;
struct TYPE_9__ {unsigned int uint; int /*<<< orphan*/  lng; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_call ; 
 int /*<<< orphan*/  OP_call_member ; 
 int /*<<< orphan*/  OP_pop ; 
 int /*<<< orphan*/  OP_push_acc ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static HRESULT FUNC7(compiler_ctx_t *ctx, call_expression_t *expr, BOOL emit_ret)
{
    unsigned arg_cnt = 0, extra_args;
    argument_t *arg;
    unsigned instr;
    jsop_t op;
    HRESULT hres;

    if(FUNC4(expr->expression->type)) {
        op = OP_call_member;
        extra_args = 2;
        hres = FUNC2(ctx, expr->expression, 0);
    }else {
        op = OP_call;
        extra_args = 1;
        hres = FUNC1(ctx, expr->expression, TRUE);
    }

    if(FUNC0(hres))
        return hres;

    for(arg = expr->argument_list; arg; arg = arg->next) {
        hres = FUNC1(ctx, arg->expr, TRUE);
        if(FUNC0(hres))
            return hres;
        arg_cnt++;
    }

    instr = FUNC5(ctx, op);
    if(!instr)
        return E_OUTOFMEMORY;

    FUNC3(ctx, instr)->u.arg[0].uint = arg_cnt;
    FUNC3(ctx, instr)->u.arg[1].lng = emit_ret;

    hres = FUNC6(ctx, OP_pop, arg_cnt + extra_args);
    if(FUNC0(hres))
        return hres;

    return !emit_ret || FUNC5(ctx, OP_push_acc) ? S_OK : E_OUTOFMEMORY;
}