
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int * lpVtbl; } ;
struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_12__ {int ref; TYPE_3__ IUnknown_inner; TYPE_3__* outer_unk; TYPE_2__ IPersistFile_iface; TYPE_1__ IAVIFile_iface; } ;
typedef int REFIID ;
typedef TYPE_3__ IUnknown ;
typedef TYPE_4__ IAVIFileImpl ;
typedef int HRESULT ;


 int AVIERR_MEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_4__* HeapAlloc (int ,int ,int) ;
 int IUnknown_QueryInterface (TYPE_3__*,int ,void**) ;
 int IUnknown_Release (TYPE_3__*) ;
 int avif_vt ;
 int pf_vt ;
 int unk_vtbl ;

HRESULT AVIFILE_CreateAVIFile(IUnknown *pUnkOuter, REFIID riid, void **ppv)
{
  IAVIFileImpl *obj;
  HRESULT hr;

  *ppv = ((void*)0);
  obj = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IAVIFileImpl));
  if (!obj)
    return AVIERR_MEMORY;

  obj->IUnknown_inner.lpVtbl = &unk_vtbl;
  obj->IAVIFile_iface.lpVtbl = &avif_vt;
  obj->IPersistFile_iface.lpVtbl = &pf_vt;
  obj->ref = 1;
  if (pUnkOuter)
    obj->outer_unk = pUnkOuter;
  else
    obj->outer_unk = &obj->IUnknown_inner;

  hr = IUnknown_QueryInterface(&obj->IUnknown_inner, riid, ppv);
  IUnknown_Release(&obj->IUnknown_inner);

  return hr;
}
