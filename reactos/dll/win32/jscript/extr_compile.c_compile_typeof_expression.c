
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* expression; } ;
typedef TYPE_1__ unary_expression_t ;
typedef int jsop_t ;
struct TYPE_7__ {int identifier; } ;
typedef TYPE_2__ identifier_expression_t ;
typedef int compiler_ctx_t ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef int HRESULT ;


 scalar_t__ EXPR_IDENT ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_typeof ;
 int OP_typeofid ;
 int OP_typeofident ;
 int S_OK ;
 int TRUE ;
 int compile_expression (int *,TYPE_4__*,int ) ;
 int compile_memberid_expression (int *,TYPE_4__*,int ) ;
 scalar_t__ is_memberid_expr (scalar_t__) ;
 scalar_t__ push_instr (int *,int ) ;
 int push_instr_bstr (int *,int ,int ) ;

__attribute__((used)) static HRESULT compile_typeof_expression(compiler_ctx_t *ctx, unary_expression_t *expr)
{
    jsop_t op;
    HRESULT hres;

    if(is_memberid_expr(expr->expression->type)) {
        if(expr->expression->type == EXPR_IDENT)
            return push_instr_bstr(ctx, OP_typeofident, ((identifier_expression_t*)expr->expression)->identifier);

        op = OP_typeofid;
        hres = compile_memberid_expression(ctx, expr->expression, 0);
    }else {
        op = OP_typeof;
        hres = compile_expression(ctx, expr->expression, TRUE);
    }
    if(FAILED(hres))
        return hres;

    return push_instr(ctx, op) ? S_OK : E_OUTOFMEMORY;
}
