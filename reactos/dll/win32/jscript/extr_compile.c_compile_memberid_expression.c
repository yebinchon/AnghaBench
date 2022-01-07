
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int identifier; int expression; } ;
typedef TYPE_1__ member_expression_t ;
typedef int jsstr_t ;
struct TYPE_7__ {int identifier; } ;
typedef TYPE_2__ identifier_expression_t ;
struct TYPE_8__ {int type; } ;
typedef TYPE_3__ expression_t ;
typedef int compiler_ctx_t ;
struct TYPE_9__ {int expression2; int expression1; } ;
typedef TYPE_4__ binary_expression_t ;
typedef int HRESULT ;


 int DEFAULT_UNREACHABLE ;



 int E_OUTOFMEMORY ;
 int FAILED (int ) ;
 int OP_memberid ;
 int OP_str ;
 int S_OK ;
 int TRUE ;
 int compile_expression (int *,int ,int ) ;
 int * compiler_alloc_string (int *,int ) ;
 int emit_identifier_ref (int *,int ,unsigned int) ;
 int push_instr_str (int *,int ,int *) ;
 int push_instr_uint (int *,int ,unsigned int) ;

__attribute__((used)) static HRESULT compile_memberid_expression(compiler_ctx_t *ctx, expression_t *expr, unsigned flags)
{
    HRESULT hres = S_OK;

    switch(expr->type) {
    case 129: {
        identifier_expression_t *ident_expr = (identifier_expression_t*)expr;

        hres = emit_identifier_ref(ctx, ident_expr->identifier, flags);
        break;
    }
    case 130: {
        binary_expression_t *array_expr = (binary_expression_t*)expr;

        hres = compile_expression(ctx, array_expr->expression1, TRUE);
        if(FAILED(hres))
            return hres;

        hres = compile_expression(ctx, array_expr->expression2, TRUE);
        if(FAILED(hres))
            return hres;

        hres = push_instr_uint(ctx, OP_memberid, flags);
        break;
    }
    case 128: {
        member_expression_t *member_expr = (member_expression_t*)expr;
        jsstr_t *jsstr;

        hres = compile_expression(ctx, member_expr->expression, TRUE);
        if(FAILED(hres))
            return hres;


        jsstr = compiler_alloc_string(ctx, member_expr->identifier);
        if(!jsstr)
            return E_OUTOFMEMORY;

        hres = push_instr_str(ctx, OP_str, jsstr);
        if(FAILED(hres))
            return hres;

        hres = push_instr_uint(ctx, OP_memberid, flags);
        break;
    }
    DEFAULT_UNREACHABLE;
    }

    return hres;
}
