
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Socket; int * fnCompletion; int fCommandLogging; int Status; int * pCallback; } ;
typedef TYPE_1__ InternetTransport ;
typedef int HRESULT ;


 int FALSE ;
 int IXP_DISCONNECTED ;
 int S_OK ;

HRESULT InternetTransport_Init(InternetTransport *This)
{
    This->pCallback = ((void*)0);
    This->Status = IXP_DISCONNECTED;
    This->Socket = -1;
    This->fCommandLogging = FALSE;
    This->fnCompletion = ((void*)0);

    return S_OK;
}
