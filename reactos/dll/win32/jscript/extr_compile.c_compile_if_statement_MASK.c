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
struct TYPE_9__ {scalar_t__ else_stat; scalar_t__ if_stat; int /*<<< orphan*/  expr; } ;
typedef  TYPE_1__ if_statement_t ;
struct TYPE_10__ {int /*<<< orphan*/  code_off; } ;
typedef  TYPE_2__ compiler_ctx_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OP_jmp ; 
 int /*<<< orphan*/  OP_jmp_z ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__) ; 
 unsigned int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(compiler_ctx_t *ctx, if_statement_t *stat)
{
    unsigned jmp_else;
    HRESULT hres;

    hres = FUNC1(ctx, stat->expr, TRUE);
    if(FUNC0(hres))
        return hres;

    jmp_else = FUNC3(ctx, OP_jmp_z);
    if(!jmp_else)
        return E_OUTOFMEMORY;

    hres = FUNC2(ctx, NULL, stat->if_stat);
    if(FUNC0(hres))
        return hres;

    if(stat->else_stat) {
        unsigned jmp_end;

        jmp_end = FUNC3(ctx, OP_jmp);
        if(!jmp_end)
            return E_OUTOFMEMORY;

        FUNC4(ctx, jmp_else, ctx->code_off);

        hres = FUNC2(ctx, NULL, stat->else_stat);
        if(FUNC0(hres))
            return hres;

        FUNC4(ctx, jmp_end, ctx->code_off);
    }else {
        FUNC4(ctx, jmp_else, ctx->code_off);
    }

    return S_OK;
}