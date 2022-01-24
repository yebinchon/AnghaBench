#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int member_0; void* break_label; void* continue_label; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__ statement_ctx_t ;
struct TYPE_8__ {int /*<<< orphan*/  statement; TYPE_5__* expr; TYPE_3__* variable; int /*<<< orphan*/  in_expr; } ;
typedef  TYPE_2__ forin_statement_t ;
typedef  int /*<<< orphan*/  compiler_ctx_t ;
struct TYPE_10__ {int /*<<< orphan*/  type; } ;
struct TYPE_9__ {int /*<<< orphan*/  identifier; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DISPID_STARTENUM ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 void* JS_E_ILLEGAL_ASSIGN ; 
 int /*<<< orphan*/  OP_forin ; 
 int /*<<< orphan*/  OP_int ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  OP_throw_ref ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdexNameEnsure ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static HRESULT FUNC11(compiler_ctx_t *ctx, forin_statement_t *stat)
{
    statement_ctx_t stat_ctx = {4, FALSE, FALSE};
    HRESULT hres;

    if(stat->variable) {
        hres = FUNC5(ctx, stat->variable);
        if(FUNC0(hres))
            return hres;
    }

    stat_ctx.break_label = FUNC1(ctx);
    if(!stat_ctx.break_label)
        return E_OUTOFMEMORY;

    stat_ctx.continue_label = FUNC1(ctx);
    if(!stat_ctx.continue_label)
        return E_OUTOFMEMORY;

    hres = FUNC2(ctx, stat->in_expr, TRUE);
    if(FUNC0(hres))
        return hres;

    if(stat->variable) {
        hres = FUNC6(ctx, stat->variable->identifier, fdexNameEnsure);
        if(FUNC0(hres))
            return hres;
    }else if(FUNC7(stat->expr->type)) {
        hres = FUNC3(ctx, stat->expr, fdexNameEnsure);
        if(FUNC0(hres))
            return hres;
    }else {
        hres = FUNC10(ctx, OP_throw_ref, JS_E_ILLEGAL_ASSIGN);
        if(FUNC0(hres))
            return hres;

        /* FIXME: compile statement anyways when we depend on compiler to check errors */
        return S_OK;
    }

    hres = FUNC9(ctx, OP_int, DISPID_STARTENUM);
    if(FUNC0(hres))
        return hres;

    FUNC8(ctx, stat_ctx.continue_label);
    hres = FUNC10(ctx, OP_forin, stat_ctx.break_label);
    if(FUNC0(hres))
        return E_OUTOFMEMORY;

    hres = FUNC4(ctx, &stat_ctx, stat->statement);
    if(FUNC0(hres))
        return hres;

    hres = FUNC10(ctx, OP_jmp, stat_ctx.continue_label);
    if(FUNC0(hres))
        return hres;

    FUNC8(ctx, stat_ctx.break_label);
    return S_OK;
}