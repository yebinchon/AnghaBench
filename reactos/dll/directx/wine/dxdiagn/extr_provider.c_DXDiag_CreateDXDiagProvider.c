
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_4__ {TYPE_2__ IDxDiagProvider_iface; scalar_t__ ref; } ;
typedef int REFIID ;
typedef int * LPVOID ;
typedef scalar_t__ LPUNKNOWN ;
typedef int LPCLASSFACTORY ;
typedef TYPE_1__ IDxDiagProviderImpl ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int DxDiagProvider_Vtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDxDiagProviderImpl_QueryInterface (TYPE_2__*,int ,int **) ;
 int TRACE (char*,scalar_t__,int ,int **) ;
 int debugstr_guid (int ) ;

HRESULT DXDiag_CreateDXDiagProvider(LPCLASSFACTORY iface, LPUNKNOWN punkOuter, REFIID riid, LPVOID *ppobj) {
  IDxDiagProviderImpl* provider;

  TRACE("(%p, %s, %p)\n", punkOuter, debugstr_guid(riid), ppobj);

  *ppobj = ((void*)0);
  if (punkOuter) return CLASS_E_NOAGGREGATION;

  provider = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IDxDiagProviderImpl));
  if (((void*)0) == provider) return E_OUTOFMEMORY;
  provider->IDxDiagProvider_iface.lpVtbl = &DxDiagProvider_Vtbl;
  provider->ref = 0;
  return IDxDiagProviderImpl_QueryInterface(&provider->IDxDiagProvider_iface, riid, ppobj);
}
