
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int nMonikerCount; TYPE_1__ IEnumMoniker_iface; scalar_t__ index; void* ppMoniker; } ;
typedef int IMoniker ;
typedef TYPE_1__ IEnumMoniker ;
typedef int HRESULT ;
typedef TYPE_2__ EnumMonikerImpl ;


 void* CoTaskMemAlloc (int) ;
 int E_OUTOFMEMORY ;
 int EnumMonikerImpl_Vtbl ;
 int S_OK ;
 int TRACE (char*,int **,int,TYPE_1__**) ;
 int memcpy (void*,int **,int) ;

HRESULT EnumMonikerImpl_Create(IMoniker ** ppMoniker, ULONG nMonikerCount, IEnumMoniker ** ppEnum)
{



    EnumMonikerImpl * pemi = CoTaskMemAlloc(sizeof(EnumMonikerImpl));

    TRACE("(%p, %d, %p)\n", ppMoniker, nMonikerCount, ppEnum);

    *ppEnum = ((void*)0);

    if (!pemi)
        return E_OUTOFMEMORY;

    pemi->IEnumMoniker_iface.lpVtbl = &EnumMonikerImpl_Vtbl;
    pemi->ref = 1;
    pemi->ppMoniker = CoTaskMemAlloc(nMonikerCount * sizeof(IMoniker*));
    memcpy(pemi->ppMoniker, ppMoniker, nMonikerCount*sizeof(IMoniker*));
    pemi->nMonikerCount = nMonikerCount;
    pemi->index = 0;

    *ppEnum = &pemi->IEnumMoniker_iface;

    return S_OK;
}
