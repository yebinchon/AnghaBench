
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IBaseFilter_iface; } ;
struct TYPE_5__ {TYPE_1__ filter; } ;
struct TYPE_6__ {int lasttime_real; int lasttime_sent; TYPE_2__ tf; } ;
typedef int * LPVOID ;
typedef int IUnknown ;
typedef int IBaseFilter ;
typedef int HRESULT ;
typedef TYPE_3__ ACMWrapperImpl ;


 int ACMWrapper_FuncsTable ;
 int ACMWrapper_Vtbl ;
 int CLASS_E_NOAGGREGATION ;
 int CLSID_ACMWrapper ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,int *,int **) ;
 int TransformFilter_Construct (int *,int,int *,int *,int **) ;

HRESULT ACMWrapper_create(IUnknown * pUnkOuter, LPVOID * ppv)
{
    HRESULT hr;
    ACMWrapperImpl* This;

    TRACE("(%p, %p)\n", pUnkOuter, ppv);

    *ppv = ((void*)0);

    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    hr = TransformFilter_Construct(&ACMWrapper_Vtbl, sizeof(ACMWrapperImpl), &CLSID_ACMWrapper, &ACMWrapper_FuncsTable, (IBaseFilter**)&This);

    if (FAILED(hr))
        return hr;

    *ppv = &This->tf.filter.IBaseFilter_iface;
    This->lasttime_real = This->lasttime_sent = -1;

    return hr;
}
