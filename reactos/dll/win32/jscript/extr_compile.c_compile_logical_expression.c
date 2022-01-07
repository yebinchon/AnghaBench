
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jsop_t ;
struct TYPE_8__ {int code_off; } ;
typedef TYPE_1__ compiler_ctx_t ;
struct TYPE_9__ {int expression2; int expression1; } ;
typedef TYPE_2__ binary_expression_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int TRUE ;
 int compile_expression (TYPE_1__*,int ,int ) ;
 unsigned int push_instr (TYPE_1__*,int ) ;
 int set_arg_uint (TYPE_1__*,unsigned int,int ) ;

__attribute__((used)) static HRESULT compile_logical_expression(compiler_ctx_t *ctx, binary_expression_t *expr, jsop_t op)
{
    unsigned instr;
    HRESULT hres;

    hres = compile_expression(ctx, expr->expression1, TRUE);
    if(FAILED(hres))
        return hres;

    instr = push_instr(ctx, op);
    if(!instr)
        return E_OUTOFMEMORY;

    hres = compile_expression(ctx, expr->expression2, TRUE);
    if(FAILED(hres))
        return hres;

    set_arg_uint(ctx, instr, ctx->code_off);
    return S_OK;
}
