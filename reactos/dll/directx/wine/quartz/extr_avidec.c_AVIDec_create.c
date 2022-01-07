
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IBaseFilter_iface; } ;
struct TYPE_5__ {TYPE_1__ filter; } ;
struct TYPE_6__ {TYPE_2__ tf; int * pBihOut; int * pBihIn; int * hvid; } ;
typedef int * LPVOID ;
typedef int IUnknown ;
typedef int IBaseFilter ;
typedef int HRESULT ;
typedef TYPE_3__ AVIDecImpl ;


 int AVIDec_FuncsTable ;
 int AVIDec_Vtbl ;
 int CLASS_E_NOAGGREGATION ;
 int CLSID_AVIDec ;
 scalar_t__ FAILED (int ) ;
 int TRACE (char*,int *,int **) ;
 int TransformFilter_Construct (int *,int,int *,int *,int **) ;

HRESULT AVIDec_create(IUnknown * pUnkOuter, LPVOID * ppv)
{
    HRESULT hr;
    AVIDecImpl * This;

    TRACE("(%p, %p)\n", pUnkOuter, ppv);

    *ppv = ((void*)0);

    if (pUnkOuter)
        return CLASS_E_NOAGGREGATION;

    hr = TransformFilter_Construct(&AVIDec_Vtbl, sizeof(AVIDecImpl), &CLSID_AVIDec, &AVIDec_FuncsTable, (IBaseFilter**)&This);

    if (FAILED(hr))
        return hr;

    This->hvid = ((void*)0);
    This->pBihIn = ((void*)0);
    This->pBihOut = ((void*)0);

    *ppv = &This->tf.filter.IBaseFilter_iface;

    return hr;
}
