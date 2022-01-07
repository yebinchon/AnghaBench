
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pCallback; } ;
typedef TYPE_1__ InternetTransport ;
typedef int HRESULT ;


 int ITransportCallback_Release (int *) ;
 int S_FALSE ;
 int S_OK ;

HRESULT InternetTransport_HandsOffCallback(InternetTransport *This)
{
    if (!This->pCallback)
        return S_FALSE;

    ITransportCallback_Release(This->pCallback);
    This->pCallback = ((void*)0);

    return S_OK;
}
