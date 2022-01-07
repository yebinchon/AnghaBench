
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expr; int identifier; struct TYPE_3__* next; } ;
typedef TYPE_1__ variable_declaration_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int OP_assign ;
 int OP_pop ;
 int S_OK ;
 int TRUE ;
 int assert (int ) ;
 int compile_expression (int *,int ,int ) ;
 int emit_identifier_ref (int *,int ,int ) ;
 int push_instr (int *,int ) ;
 int push_instr_uint (int *,int ,int) ;

__attribute__((used)) static HRESULT compile_variable_list(compiler_ctx_t *ctx, variable_declaration_t *list)
{
    variable_declaration_t *iter;
    HRESULT hres;

    assert(list != ((void*)0));

    for(iter = list; iter; iter = iter->next) {
        if(!iter->expr)
            continue;

        hres = emit_identifier_ref(ctx, iter->identifier, 0);
        if(FAILED(hres))
            return hres;

        hres = compile_expression(ctx, iter->expr, TRUE);
        if(FAILED(hres))
            return hres;

        if(!push_instr(ctx, OP_assign))
            return E_OUTOFMEMORY;

        hres = push_instr_uint(ctx, OP_pop, 1);
        if(FAILED(hres))
            return hres;
    }

    return S_OK;
}
