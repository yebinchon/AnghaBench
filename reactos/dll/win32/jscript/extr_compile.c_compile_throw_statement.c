
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expr; } ;
typedef TYPE_1__ expression_statement_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_throw ;
 int S_OK ;
 int TRUE ;
 int compile_expression (int *,int ,int ) ;
 scalar_t__ push_instr (int *,int ) ;

__attribute__((used)) static HRESULT compile_throw_statement(compiler_ctx_t *ctx, expression_statement_t *stat)
{
    HRESULT hres;

    hres = compile_expression(ctx, stat->expr, TRUE);
    if(FAILED(hres))
        return hres;

    return push_instr(ctx, OP_throw) ? S_OK : E_OUTOFMEMORY;
}
