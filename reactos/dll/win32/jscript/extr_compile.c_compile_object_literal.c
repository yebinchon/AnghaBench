
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* property_list; } ;
typedef TYPE_1__ property_value_expression_t ;
struct TYPE_5__ {int type; int value; int name; struct TYPE_5__* next; } ;
typedef TYPE_2__ property_definition_t ;
typedef int jsstr_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_new_obj ;
 int OP_obj_prop ;
 int S_OK ;
 int TRUE ;
 int compile_expression (int *,int ,int ) ;
 int literal_as_string (int *,int ,int **) ;
 int push_instr (int *,int ) ;
 int push_instr_str_uint (int *,int ,int *,int ) ;

__attribute__((used)) static HRESULT compile_object_literal(compiler_ctx_t *ctx, property_value_expression_t *expr)
{
    property_definition_t *iter;
    jsstr_t *name;
    HRESULT hres;

    if(!push_instr(ctx, OP_new_obj))
        return E_OUTOFMEMORY;

    for(iter = expr->property_list; iter; iter = iter->next) {
        hres = literal_as_string(ctx, iter->name, &name);
        if(FAILED(hres))
            return hres;

        hres = compile_expression(ctx, iter->value, TRUE);
        if(FAILED(hres))
            return hres;

        hres = push_instr_str_uint(ctx, OP_obj_prop, name, iter->type);
        if(FAILED(hres))
            return hres;
    }

    return S_OK;
}
