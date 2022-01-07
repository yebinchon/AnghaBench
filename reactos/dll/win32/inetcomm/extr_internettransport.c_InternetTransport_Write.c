
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vtbl; } ;
struct TYPE_5__ {scalar_t__ Status; TYPE_1__ u; int Socket; scalar_t__ fnCompletion; } ;
typedef TYPE_2__ InternetTransport ;
typedef int (* INETXPORT_COMPLETION_FUNCTION ) (int *,int *,int ) ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ IXP_DISCONNECTED ;
 int IXP_E_BUSY ;
 int IXP_E_NOT_CONNECTED ;
 int SOCKET_ERROR ;
 int S_OK ;
 int WSAGetLastError () ;
 int send (int ,char const*,int,int ) ;

HRESULT InternetTransport_Write(InternetTransport *This, const char *pvData,
    int cbSize, INETXPORT_COMPLETION_FUNCTION fnCompletion)
{
    int ret;

    if (This->Status == IXP_DISCONNECTED)
        return IXP_E_NOT_CONNECTED;

    if (This->fnCompletion)
        return IXP_E_BUSY;


    ret = send(This->Socket, pvData, cbSize, 0);
    if (ret == SOCKET_ERROR)
    {
        ERR("send failed with error %d\n", WSAGetLastError());

    }

    fnCompletion((IInternetTransport *)&This->u.vtbl, ((void*)0), 0);

    return S_OK;
}
