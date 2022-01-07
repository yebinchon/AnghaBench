
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IClassFactory_iface; int clsid; } ;
typedef int IID ;
typedef TYPE_1__ IClassFactoryImpl ;
typedef int HRESULT ;
typedef int CLSID ;


 int E_OUTOFMEMORY ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IClassFactory_QueryInterface (TYPE_2__*,int const*,void**) ;
 int IClassFactory_Release (TYPE_2__*) ;
 int iclassfact ;

__attribute__((used)) static HRESULT AVIFILE_CreateClassFactory(const CLSID *clsid, const IID *riid, void **ppv)
{
    IClassFactoryImpl *cf;
    HRESULT hr;

    *ppv = ((void*)0);

    cf = HeapAlloc(GetProcessHeap(), 0, sizeof(*cf));
    if (!cf)
        return E_OUTOFMEMORY;

    cf->IClassFactory_iface.lpVtbl = &iclassfact;
    cf->ref = 1;
    cf->clsid = *clsid;

    hr = IClassFactory_QueryInterface(&cf->IClassFactory_iface, riid, ppv);
    IClassFactory_Release(&cf->IClassFactory_iface);

    return hr;
}
