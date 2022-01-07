
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_5__* expression; } ;
typedef TYPE_1__ unary_expression_t ;
struct TYPE_8__ {int identifier; TYPE_5__* expression; } ;
typedef TYPE_2__ member_expression_t ;
typedef int jsstr_t ;
struct TYPE_9__ {int identifier; } ;
typedef TYPE_3__ identifier_expression_t ;
typedef int compiler_ctx_t ;
struct TYPE_10__ {TYPE_5__* expression2; TYPE_5__* expression1; } ;
typedef TYPE_4__ binary_expression_t ;
typedef float WCHAR ;
struct TYPE_11__ {int type; } ;
typedef int HRESULT ;





 int E_OUTOFMEMORY ;
 int FAILED (int ) ;
 int JS_E_INVALID_DELETE ;
 int OP_delete ;
 int OP_delete_ident ;
 int OP_str ;
 int OP_throw_type ;
 int S_OK ;
 int TRUE ;
 int WARN (char*) ;
 int compile_expression (int *,TYPE_5__*,int ) ;
 int * compiler_alloc_string (int *,int ) ;
 int push_instr (int *,int ) ;
 int push_instr_bstr (int *,int ,int ) ;
 int push_instr_str (int *,int ,int *) ;
 int push_instr_uint_str (int *,int ,int ,float const*) ;

__attribute__((used)) static HRESULT compile_delete_expression(compiler_ctx_t *ctx, unary_expression_t *expr)
{
    HRESULT hres;

    switch(expr->expression->type) {
    case 130: {
        binary_expression_t *array_expr = (binary_expression_t*)expr->expression;

        hres = compile_expression(ctx, array_expr->expression1, TRUE);
        if(FAILED(hres))
            return hres;

        hres = compile_expression(ctx, array_expr->expression2, TRUE);
        if(FAILED(hres))
            return hres;

        if(!push_instr(ctx, OP_delete))
            return E_OUTOFMEMORY;
        break;
    }
    case 128: {
        member_expression_t *member_expr = (member_expression_t*)expr->expression;
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

        if(!push_instr(ctx, OP_delete))
            return E_OUTOFMEMORY;
        break;
    }
    case 129:
        return push_instr_bstr(ctx, OP_delete_ident, ((identifier_expression_t*)expr->expression)->identifier);
    default: {
        static const WCHAR fixmeW[] = {'F','I','X','M','E',0};

        WARN("invalid delete, unimplemented exception message\n");

        hres = compile_expression(ctx, expr->expression, TRUE);
        if(FAILED(hres))
            return hres;

        return push_instr_uint_str(ctx, OP_throw_type, JS_E_INVALID_DELETE, fixmeW);
    }
    }

    return S_OK;
}
