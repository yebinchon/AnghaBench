
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int identifier; int expression; } ;
typedef TYPE_1__ member_expression_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int OP_member ;
 int TRUE ;
 int compile_expression (int *,int ,int ) ;
 int push_instr_bstr (int *,int ,int ) ;

__attribute__((used)) static HRESULT compile_member_expression(compiler_ctx_t *ctx, member_expression_t *expr)
{
    HRESULT hres;

    hres = compile_expression(ctx, expr->expression, TRUE);
    if(FAILED(hres))
        return hres;

    return push_instr_bstr(ctx, OP_member, expr->identifier);
}
