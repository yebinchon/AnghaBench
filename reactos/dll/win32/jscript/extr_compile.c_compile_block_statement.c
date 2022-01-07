
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ statement_t ;
typedef int compiler_ctx_t ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int S_OK ;
 int compile_statement (int *,int *,TYPE_1__*) ;

__attribute__((used)) static HRESULT compile_block_statement(compiler_ctx_t *ctx, statement_t *iter)
{
    HRESULT hres;

    while(iter) {
        hres = compile_statement(ctx, ((void*)0), iter);
        if(FAILED(hres))
            return hres;

        iter = iter->next;
    }

    return S_OK;
}
