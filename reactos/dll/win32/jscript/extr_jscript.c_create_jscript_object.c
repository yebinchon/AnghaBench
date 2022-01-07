
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_16__ {int * lpVtbl; } ;
struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_13__ {int * lpVtbl; } ;
struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_15__ {int ref; TYPE_8__ IActiveScript_iface; int is_encode; int safeopt; TYPE_5__ IVariantChangeType_iface; TYPE_4__ IObjectSafety_iface; TYPE_3__ IActiveScriptProperty_iface; TYPE_2__ IActiveScriptParseProcedure2_iface; TYPE_1__ IActiveScriptParse_iface; } ;
typedef int REFIID ;
typedef TYPE_6__ JScript ;
typedef int HRESULT ;
typedef int BOOL ;


 int E_OUTOFMEMORY ;
 int IActiveScript_QueryInterface (TYPE_8__*,int ,void**) ;
 int IActiveScript_Release (TYPE_8__*) ;
 int INTERFACE_USES_DISPEX ;
 int JScriptParseProcedureVtbl ;
 int JScriptParseVtbl ;
 int JScriptPropertyVtbl ;
 int JScriptSafetyVtbl ;
 int JScriptVtbl ;
 int VariantChangeTypeVtbl ;
 TYPE_6__* heap_alloc_zero (int) ;
 int lock_module () ;

HRESULT create_jscript_object(BOOL is_encode, REFIID riid, void **ppv)
{
    JScript *ret;
    HRESULT hres;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    lock_module();

    ret->IActiveScript_iface.lpVtbl = &JScriptVtbl;
    ret->IActiveScriptParse_iface.lpVtbl = &JScriptParseVtbl;
    ret->IActiveScriptParseProcedure2_iface.lpVtbl = &JScriptParseProcedureVtbl;
    ret->IActiveScriptProperty_iface.lpVtbl = &JScriptPropertyVtbl;
    ret->IObjectSafety_iface.lpVtbl = &JScriptSafetyVtbl;
    ret->IVariantChangeType_iface.lpVtbl = &VariantChangeTypeVtbl;
    ret->ref = 1;
    ret->safeopt = INTERFACE_USES_DISPEX;
    ret->is_encode = is_encode;

    hres = IActiveScript_QueryInterface(&ret->IActiveScript_iface, riid, ppv);
    IActiveScript_Release(&ret->IActiveScript_iface);
    return hres;
}
