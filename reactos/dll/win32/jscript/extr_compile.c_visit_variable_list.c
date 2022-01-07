
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expr; int identifier; struct TYPE_3__* next; } ;
typedef TYPE_1__ variable_declaration_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int alloc_variable (int *,int ) ;
 int visit_expression (int *,scalar_t__) ;

__attribute__((used)) static HRESULT visit_variable_list(compiler_ctx_t *ctx, variable_declaration_t *list)
{
    variable_declaration_t *iter;
    HRESULT hres;

    for(iter = list; iter; iter = iter->next) {
        if(!alloc_variable(ctx, iter->identifier))
            return E_OUTOFMEMORY;

        if(iter->expr) {
            hres = visit_expression(ctx, iter->expr);
            if(FAILED(hres))
                return hres;
        }
    }

    return S_OK;
}
