
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* expression; } ;
typedef TYPE_1__ unary_expression_t ;
typedef int jsop_t ;
typedef int compiler_ctx_t ;
struct TYPE_6__ {int type; } ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int JS_E_ILLEGAL_ASSIGN ;
 int OP_throw_ref ;
 int TRUE ;
 int compile_expression (int *,TYPE_2__*,int ) ;
 int compile_memberid_expression (int *,TYPE_2__*,int ) ;
 int fdexNameEnsure ;
 int is_memberid_expr (int ) ;
 int push_instr_int (int *,int ,int) ;
 int push_instr_uint (int *,int ,int ) ;

__attribute__((used)) static HRESULT compile_increment_expression(compiler_ctx_t *ctx, unary_expression_t *expr, jsop_t op, int n)
{
    HRESULT hres;

    if(!is_memberid_expr(expr->expression->type)) {
        hres = compile_expression(ctx, expr->expression, TRUE);
        if(FAILED(hres))
            return hres;

        return push_instr_uint(ctx, OP_throw_ref, JS_E_ILLEGAL_ASSIGN);
    }

    hres = compile_memberid_expression(ctx, expr->expression, fdexNameEnsure);
    if(FAILED(hres))
        return hres;

    return push_instr_int(ctx, op, n);
}
