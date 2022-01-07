
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_1__ IMimeSecurity_iface; } ;
typedef TYPE_2__ MimeSecurity ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int MimeSecurityVtbl ;
 int S_OK ;

HRESULT MimeSecurity_create(IUnknown *outer, void **obj)
{
    MimeSecurity *This;

    *obj = ((void*)0);

    if (outer) return CLASS_E_NOAGGREGATION;

    This = HeapAlloc(GetProcessHeap(), 0, sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IMimeSecurity_iface.lpVtbl = &MimeSecurityVtbl;
    This->ref = 1;

    *obj = &This->IMimeSecurity_iface;
    return S_OK;
}
