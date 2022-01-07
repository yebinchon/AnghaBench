
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ expr; } ;
typedef TYPE_1__ expression_statement_t ;
struct TYPE_10__ {scalar_t__ from_eval; } ;
typedef TYPE_2__ compiler_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int JS_E_MISPLACED_RETURN ;
 int OP_ret ;
 int OP_setret ;
 int TRUE ;
 int WARN (char*) ;
 int compile_expression (TYPE_2__*,scalar_t__,int ) ;
 int pop_to_stat (TYPE_2__*,int *) ;
 int push_instr (TYPE_2__*,int ) ;
 int push_instr_uint (TYPE_2__*,int ,int) ;

__attribute__((used)) static HRESULT compile_return_statement(compiler_ctx_t *ctx, expression_statement_t *stat)
{
    HRESULT hres;

    if(ctx->from_eval) {
        WARN("misplaced return statement\n");
        return JS_E_MISPLACED_RETURN;
    }

    if(stat->expr) {
        hres = compile_expression(ctx, stat->expr, TRUE);
        if(FAILED(hres))
            return hres;
        if(!push_instr(ctx, OP_setret))
            return E_OUTOFMEMORY;
    }

    hres = pop_to_stat(ctx, ((void*)0));
    if(FAILED(hres))
        return hres;

    return push_instr_uint(ctx, OP_ret, !stat->expr);
}
