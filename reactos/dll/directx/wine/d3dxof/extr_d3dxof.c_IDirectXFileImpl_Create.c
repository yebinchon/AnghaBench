
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_11__ {int ref; int nb_xtemplates; TYPE_3__ IDirectXFile_iface; TYPE_2__* xtemplates; } ;
struct TYPE_9__ {int nb_members; TYPE_1__* members; int name; } ;
struct TYPE_8__ {int nb_dims; int* dim_value; int * dim_fixed; int type; } ;
typedef TYPE_3__* LPVOID ;
typedef int IUnknown ;
typedef TYPE_4__ IDirectXFileImpl ;
typedef int HRESULT ;


 int DXFILEERR_BADALLOC ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int IDirectXFile_Vtbl ;
 int S_OK ;
 int TOKEN_DWORD ;
 int TOKEN_FLOAT ;
 int TRACE (char*,int *,TYPE_3__**) ;
 int TRUE ;
 int strcpy (int ,char*) ;

HRESULT IDirectXFileImpl_Create(IUnknown* pUnkOuter, LPVOID* ppObj)
{
    IDirectXFileImpl* object;

    TRACE("(%p,%p)\n", pUnkOuter, ppObj);

    object = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IDirectXFileImpl));
    if (!object)
        return DXFILEERR_BADALLOC;

    object->IDirectXFile_iface.lpVtbl = &IDirectXFile_Vtbl;
    object->ref = 1;


    object->nb_xtemplates = 1;
    strcpy(object->xtemplates[0].name, "indexColor");
    object->xtemplates[0].nb_members = 2;
    object->xtemplates[0].members[0].type = TOKEN_DWORD;
    object->xtemplates[0].members[0].nb_dims = 0;
    object->xtemplates[0].members[1].type = TOKEN_FLOAT;
    object->xtemplates[0].members[1].nb_dims = 1;
    object->xtemplates[0].members[1].dim_fixed[0] = TRUE;
    object->xtemplates[0].members[1].dim_value[0] = 4;

    *ppObj = &object->IDirectXFile_iface;

    return S_OK;
}
