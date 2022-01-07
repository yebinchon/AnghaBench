
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int site; } ;
typedef TYPE_2__ script_ctx_t ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_1__ IServiceProvider_iface; int * sp; } ;
typedef int IUnknown ;
typedef int IServiceProvider ;
typedef int HRESULT ;
typedef TYPE_3__ AXSite ;


 int AXSiteVtbl ;
 scalar_t__ FAILED (int ) ;
 int IActiveScriptSite_QueryInterface (int ,int *,void**) ;
 int IID_IServiceProvider ;
 int IServiceProvider_Release (int *) ;
 int TRACE (char*,int ) ;
 TYPE_3__* heap_alloc (int) ;

IUnknown *create_ax_site(script_ctx_t *ctx)
{
    IServiceProvider *sp = ((void*)0);
    AXSite *ret;
    HRESULT hres;

    hres = IActiveScriptSite_QueryInterface(ctx->site, &IID_IServiceProvider, (void**)&sp);
    if(FAILED(hres)) {
        TRACE("Could not get IServiceProvider iface: %08x\n", hres);
    }

    ret = heap_alloc(sizeof(AXSite));
    if(!ret) {
        IServiceProvider_Release(sp);
        return ((void*)0);
    }

    ret->IServiceProvider_iface.lpVtbl = &AXSiteVtbl;
    ret->ref = 1;
    ret->sp = sp;

    return (IUnknown*)&ret->IServiceProvider_iface;
}
