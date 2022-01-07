
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Status; int ServerInfo; } ;
typedef int * LPINETSERVER ;
typedef TYPE_1__ InternetTransport ;
typedef int HRESULT ;


 scalar_t__ IXP_DISCONNECTED ;
 int IXP_E_NOT_CONNECTED ;
 int S_OK ;

HRESULT InternetTransport_GetServerInfo(InternetTransport *This, LPINETSERVER pInetServer)
{
    if (This->Status == IXP_DISCONNECTED)
        return IXP_E_NOT_CONNECTED;

    *pInetServer = This->ServerInfo;
    return S_OK;
}
