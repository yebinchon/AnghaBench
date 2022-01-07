
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_4__ {TYPE_2__ IDxDiagContainer_iface; int * pProv; int * cont; scalar_t__ ref; } ;
typedef int REFIID ;
typedef int * LPVOID ;
typedef int IDxDiagProvider ;
typedef int IDxDiagContainerImpl_Container ;
typedef TYPE_1__ IDxDiagContainerImpl ;
typedef int HRESULT ;


 int DxDiagContainer_Vtbl ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDxDiagContainerImpl_QueryInterface (TYPE_2__*,int ,int **) ;
 int IDxDiagProvider_AddRef (int *) ;
 int TRACE (char*,int ,int **) ;
 int debugstr_guid (int ) ;

HRESULT DXDiag_CreateDXDiagContainer(REFIID riid, IDxDiagContainerImpl_Container *cont, IDxDiagProvider *pProv, LPVOID *ppobj) {
  IDxDiagContainerImpl* container;

  TRACE("(%s, %p)\n", debugstr_guid(riid), ppobj);

  container = HeapAlloc(GetProcessHeap(), 0, sizeof(IDxDiagContainerImpl));
  if (((void*)0) == container) {
    *ppobj = ((void*)0);
    return E_OUTOFMEMORY;
  }
  container->IDxDiagContainer_iface.lpVtbl = &DxDiagContainer_Vtbl;
  container->ref = 0;
  container->cont = cont;
  container->pProv = pProv;
  IDxDiagProvider_AddRef(pProv);
  return IDxDiagContainerImpl_QueryInterface(&container->IDxDiagContainer_iface, riid, ppobj);
}
