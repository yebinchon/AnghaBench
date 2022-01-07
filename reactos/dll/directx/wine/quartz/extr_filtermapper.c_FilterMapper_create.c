
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int IFilterMapper_iface; } ;
typedef int * LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_1__ FilterMapper3Impl ;


 scalar_t__ FAILED (int ) ;
 int FilterMapper2_create (int *,int **) ;
 int TRACE (char*,int *,int **) ;

HRESULT FilterMapper_create(IUnknown *pUnkOuter, LPVOID *ppObj)
{
    FilterMapper3Impl *pFM2impl;
    HRESULT hr;

    TRACE("(%p, %p)\n", pUnkOuter, ppObj);

    hr = FilterMapper2_create(pUnkOuter, (LPVOID*)&pFM2impl);
    if (FAILED(hr))
        return hr;

    *ppObj = &pFM2impl->IFilterMapper_iface;

    return hr;
}
