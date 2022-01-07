
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int statement; int expr; } ;
typedef TYPE_1__ with_statement_t ;
struct TYPE_6__ {int member_2; int member_1; int member_0; } ;
typedef TYPE_2__ statement_ctx_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int OP_pop_scope ;
 int OP_push_scope ;
 int S_OK ;
 int TRUE ;
 int compile_expression (int *,int ,int ) ;
 int compile_statement (int *,TYPE_2__*,int ) ;
 int push_instr (int *,int ) ;

__attribute__((used)) static HRESULT compile_with_statement(compiler_ctx_t *ctx, with_statement_t *stat)
{
    statement_ctx_t stat_ctx = {0, TRUE, FALSE};
    HRESULT hres;

    hres = compile_expression(ctx, stat->expr, TRUE);
    if(FAILED(hres))
        return hres;

    if(!push_instr(ctx, OP_push_scope))
        return E_OUTOFMEMORY;

    hres = compile_statement(ctx, &stat_ctx, stat->statement);
    if(FAILED(hres))
        return hres;

    if(!push_instr(ctx, OP_pop_scope))
        return E_OUTOFMEMORY;

    return S_OK;
}
