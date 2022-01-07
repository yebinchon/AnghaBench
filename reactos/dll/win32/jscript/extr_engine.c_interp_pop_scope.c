
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* call_ctx; } ;
typedef TYPE_2__ script_ctx_t ;
struct TYPE_4__ {int scope; } ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*) ;
 int scope_pop (int *) ;

__attribute__((used)) static HRESULT interp_pop_scope(script_ctx_t *ctx)
{
    TRACE("\n");

    scope_pop(&ctx->call_ctx->scope);
    return S_OK;
}
