
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IDirectXFileSaveObject_iface; } ;
typedef TYPE_2__ IDirectXFileSaveObjectImpl ;
typedef int HRESULT ;


 int DXFILEERR_BADALLOC ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IDirectXFileSaveObject_Vtbl ;
 int S_OK ;
 int TRACE (char*,TYPE_2__**) ;

__attribute__((used)) static HRESULT IDirectXFileSaveObjectImpl_Create(IDirectXFileSaveObjectImpl** ppObj)
{
    IDirectXFileSaveObjectImpl* object;

    TRACE("(%p)\n", ppObj);

    object = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IDirectXFileSaveObjectImpl));
    if (!object)
        return DXFILEERR_BADALLOC;

    object->IDirectXFileSaveObject_iface.lpVtbl = &IDirectXFileSaveObject_Vtbl;
    object->ref = 1;

    *ppObj = object;

    return S_OK;
}
