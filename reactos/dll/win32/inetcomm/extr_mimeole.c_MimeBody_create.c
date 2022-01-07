
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IMimeBody_iface; } ;
typedef TYPE_1__ MimeBody ;
typedef int IUnknown ;
typedef int HRESULT ;


 int CLASS_E_NOAGGREGATION ;
 int E_OUTOFMEMORY ;
 int S_OK ;
 TYPE_1__* mimebody_create () ;

HRESULT MimeBody_create(IUnknown *outer, void **ppv)
{
    MimeBody *mb;

    if(outer)
        return CLASS_E_NOAGGREGATION;

    if ((mb = mimebody_create()))
    {
        *ppv = &mb->IMimeBody_iface;
        return S_OK;
    }
    else
    {
        *ppv = ((void*)0);
        return E_OUTOFMEMORY;
    }
}
