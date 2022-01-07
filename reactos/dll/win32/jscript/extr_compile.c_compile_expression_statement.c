
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int expr; } ;
typedef TYPE_1__ expression_statement_t ;
struct TYPE_8__ {int from_eval; } ;
typedef TYPE_2__ compiler_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_setret ;
 int S_OK ;
 int compile_expression (TYPE_2__*,int ,int ) ;
 scalar_t__ push_instr (TYPE_2__*,int ) ;

__attribute__((used)) static HRESULT compile_expression_statement(compiler_ctx_t *ctx, expression_statement_t *stat)
{
    HRESULT hres;

    hres = compile_expression(ctx, stat->expr, ctx->from_eval);
    if(FAILED(hres))
        return hres;

    return !ctx->from_eval || push_instr(ctx, OP_setret) ? S_OK : E_OUTOFMEMORY;
}
