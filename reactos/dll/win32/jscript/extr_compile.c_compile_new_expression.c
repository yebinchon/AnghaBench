
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int compiler_ctx_t ;
struct TYPE_4__ {TYPE_2__* argument_list; int expression; } ;
typedef TYPE_1__ call_expression_t ;
struct TYPE_5__ {int expr; struct TYPE_5__* next; } ;
typedef TYPE_2__ argument_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_new ;
 int OP_pop ;
 int OP_push_acc ;
 int S_OK ;
 int TRUE ;
 int compile_expression (int *,int ,int ) ;
 scalar_t__ push_instr (int *,int ) ;
 int push_instr_uint (int *,int ,unsigned int) ;

__attribute__((used)) static HRESULT compile_new_expression(compiler_ctx_t *ctx, call_expression_t *expr)
{
    unsigned arg_cnt = 0;
    argument_t *arg;
    HRESULT hres;

    hres = compile_expression(ctx, expr->expression, TRUE);
    if(FAILED(hres))
        return hres;

    for(arg = expr->argument_list; arg; arg = arg->next) {
        hres = compile_expression(ctx, arg->expr, TRUE);
        if(FAILED(hres))
            return hres;
        arg_cnt++;
    }

    hres = push_instr_uint(ctx, OP_new, arg_cnt);
    if(FAILED(hres))
        return hres;

    hres = push_instr_uint(ctx, OP_pop, arg_cnt+1);
    if(FAILED(hres))
        return hres;

    return push_instr(ctx, OP_push_acc) ? S_OK : E_OUTOFMEMORY;
}
