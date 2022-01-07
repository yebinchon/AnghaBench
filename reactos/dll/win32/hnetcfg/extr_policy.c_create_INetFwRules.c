
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int refs; TYPE_2__ INetFwRules_iface; } ;
typedef TYPE_1__ fw_rules ;
typedef TYPE_2__ INetFwRules ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,...) ;
 int fw_rules_vtbl ;

__attribute__((used)) static HRESULT create_INetFwRules(INetFwRules **object)
{
    fw_rules *rules;

    TRACE("(%p)\n", object);

    rules = HeapAlloc( GetProcessHeap(), 0, sizeof(*rules) );
    if (!rules) return E_OUTOFMEMORY;

    rules->INetFwRules_iface.lpVtbl = &fw_rules_vtbl;
    rules->refs = 1;

    *object = &rules->INetFwRules_iface;

    TRACE("returning iface %p\n", *object);
    return S_OK;
}
