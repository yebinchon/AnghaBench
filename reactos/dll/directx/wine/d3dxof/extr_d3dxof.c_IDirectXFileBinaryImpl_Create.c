
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IDirectXFileBinary_iface; } ;
typedef TYPE_2__ IDirectXFileBinaryImpl ;
typedef int HRESULT ;


 int DXFILEERR_BADALLOC ;
 int DXFILE_OK ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IDirectXFileBinary_Vtbl ;
 int TRACE (char*,TYPE_2__**) ;

__attribute__((used)) static HRESULT IDirectXFileBinaryImpl_Create(IDirectXFileBinaryImpl** ppObj)
{
    IDirectXFileBinaryImpl* object;

    TRACE("(%p)\n", ppObj);

    object = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IDirectXFileBinaryImpl));
    if (!object)
        return DXFILEERR_BADALLOC;

    object->IDirectXFileBinary_iface.lpVtbl = &IDirectXFileBinary_Vtbl;
    object->ref = 1;

    *ppObj = object;

    return DXFILE_OK;
}
