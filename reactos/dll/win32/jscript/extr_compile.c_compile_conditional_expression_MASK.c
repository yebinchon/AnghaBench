#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  false_expression; int /*<<< orphan*/  true_expression; int /*<<< orphan*/  expression; } ;
typedef  TYPE_1__ conditional_expression_t ;
struct TYPE_10__ {int /*<<< orphan*/  code_off; } ;
typedef  TYPE_2__ compiler_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_cnd_z ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  OP_pop ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(compiler_ctx_t *ctx, conditional_expression_t *expr)
{
    unsigned jmp_false, jmp_end;
    HRESULT hres;

    hres = FUNC1(ctx, expr->expression, TRUE);
    if(FUNC0(hres))
        return hres;

    jmp_false = FUNC2(ctx, OP_cnd_z);
    if(!jmp_false)
        return E_OUTOFMEMORY;

    hres = FUNC1(ctx, expr->true_expression, TRUE);
    if(FUNC0(hres))
        return hres;

    jmp_end = FUNC2(ctx, OP_jmp);
    if(!jmp_end)
        return E_OUTOFMEMORY;

    FUNC4(ctx, jmp_false, ctx->code_off);
    hres = FUNC3(ctx, OP_pop, 1);
    if(FUNC0(hres))
        return hres;

    hres = FUNC1(ctx, expr->false_expression, TRUE);
    if(FUNC0(hres))
        return hres;

    FUNC4(ctx, jmp_end, ctx->code_off);
    return S_OK;
}