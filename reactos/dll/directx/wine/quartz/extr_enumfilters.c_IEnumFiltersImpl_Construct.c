
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_6__ {int refCount; TYPE_2__ IEnumFilters_iface; int Version; int * pVersionSource; int *** pppFilters; int * pNumFilters; scalar_t__ uIndex; } ;
typedef int LONG ;
typedef int IGraphVersion ;
typedef TYPE_1__ IEnumFiltersImpl ;
typedef TYPE_2__ IEnumFilters ;
typedef int IBaseFilter ;
typedef scalar_t__ HRESULT ;


 TYPE_1__* CoTaskMemAlloc (int) ;
 scalar_t__ E_OUTOFMEMORY ;
 int IEnumFiltersImpl_Vtbl ;
 int IGraphVersion_AddRef (int *) ;
 scalar_t__ IGraphVersion_QueryVersion (int *,int *) ;
 scalar_t__ S_OK ;
 int TRACE (char*,int ***,int *,TYPE_2__**) ;

HRESULT IEnumFiltersImpl_Construct(IGraphVersion * pVersionSource, IBaseFilter *** pppFilters, ULONG * pNumFilters, IEnumFilters ** ppEnum)
{


    IEnumFiltersImpl * pEnumFilters = CoTaskMemAlloc(sizeof(IEnumFiltersImpl));
    HRESULT hr;
    LONG currentVersion;

    TRACE("(%p, %p, %p)\n", pppFilters, pNumFilters, ppEnum);

    *ppEnum = ((void*)0);

    if (!pEnumFilters)
    {
        return E_OUTOFMEMORY;
    }

    pEnumFilters->IEnumFilters_iface.lpVtbl = &IEnumFiltersImpl_Vtbl;
    pEnumFilters->refCount = 1;
    pEnumFilters->uIndex = 0;
    pEnumFilters->pNumFilters = pNumFilters;
    pEnumFilters->pppFilters = pppFilters;
    IGraphVersion_AddRef(pVersionSource);
    pEnumFilters->pVersionSource = pVersionSource;


    hr = IGraphVersion_QueryVersion(pVersionSource, &currentVersion);
    pEnumFilters->Version = (hr==S_OK) ? currentVersion : 0;

    *ppEnum = &pEnumFilters->IEnumFilters_iface;
    return S_OK;
}
