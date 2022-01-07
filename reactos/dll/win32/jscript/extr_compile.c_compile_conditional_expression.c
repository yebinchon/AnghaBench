
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int false_expression; int true_expression; int expression; } ;
typedef TYPE_1__ conditional_expression_t ;
struct TYPE_10__ {int code_off; } ;
typedef TYPE_2__ compiler_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_cnd_z ;
 int OP_jmp ;
 int OP_pop ;
 int S_OK ;
 int TRUE ;
 int compile_expression (TYPE_2__*,int ,int ) ;
 unsigned int push_instr (TYPE_2__*,int ) ;
 int push_instr_uint (TYPE_2__*,int ,int) ;
 int set_arg_uint (TYPE_2__*,unsigned int,int ) ;

__attribute__((used)) static HRESULT compile_conditional_expression(compiler_ctx_t *ctx, conditional_expression_t *expr)
{
    unsigned jmp_false, jmp_end;
    HRESULT hres;

    hres = compile_expression(ctx, expr->expression, TRUE);
    if(FAILED(hres))
        return hres;

    jmp_false = push_instr(ctx, OP_cnd_z);
    if(!jmp_false)
        return E_OUTOFMEMORY;

    hres = compile_expression(ctx, expr->true_expression, TRUE);
    if(FAILED(hres))
        return hres;

    jmp_end = push_instr(ctx, OP_jmp);
    if(!jmp_end)
        return E_OUTOFMEMORY;

    set_arg_uint(ctx, jmp_false, ctx->code_off);
    hres = push_instr_uint(ctx, OP_pop, 1);
    if(FAILED(hres))
        return hres;

    hres = compile_expression(ctx, expr->false_expression, TRUE);
    if(FAILED(hres))
        return hres;

    set_arg_uint(ctx, jmp_end, ctx->code_off);
    return S_OK;
}
