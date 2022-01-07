
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* jscaller; } ;
typedef TYPE_2__ script_ctx_t ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_2__* ctx; TYPE_1__ IServiceProvider_iface; } ;
typedef TYPE_3__ JSCaller ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int ServiceProviderVtbl ;
 TYPE_3__* heap_alloc (int) ;

HRESULT create_jscaller(script_ctx_t *ctx)
{
    JSCaller *ret;

    ret = heap_alloc(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IServiceProvider_iface.lpVtbl = &ServiceProviderVtbl;
    ret->ref = 1;
    ret->ctx = ctx;

    ctx->jscaller = ret;
    return S_OK;
}
