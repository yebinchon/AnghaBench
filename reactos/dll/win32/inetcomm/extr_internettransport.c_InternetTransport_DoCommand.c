
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vtbl; } ;
struct TYPE_6__ {scalar_t__ Status; TYPE_1__ u; scalar_t__ pCallback; scalar_t__ fCommandLogging; scalar_t__ fnCompletion; } ;
typedef int LPSTR ;
typedef scalar_t__ LPCSTR ;
typedef TYPE_2__ InternetTransport ;
typedef int INETXPORT_COMPLETION_FUNCTION ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 int CMD_SEND ;
 int ITransportCallback_OnCommand (scalar_t__,int ,int ,int ,int *) ;
 scalar_t__ IXP_DISCONNECTED ;
 int IXP_E_BUSY ;
 int IXP_E_NOT_CONNECTED ;
 int InternetTransport_Write (TYPE_2__*,scalar_t__,int ,int ) ;
 int strlen (scalar_t__) ;

HRESULT InternetTransport_DoCommand(InternetTransport *This,
    LPCSTR pszCommand, INETXPORT_COMPLETION_FUNCTION fnCompletion)
{
    if (This->Status == IXP_DISCONNECTED)
        return IXP_E_NOT_CONNECTED;

    if (This->fnCompletion)
        return IXP_E_BUSY;

    if (This->pCallback && This->fCommandLogging)
    {
        ITransportCallback_OnCommand(This->pCallback, CMD_SEND, (LPSTR)pszCommand, 0,
            (IInternetTransport *)&This->u.vtbl);
    }
    return InternetTransport_Write(This, pszCommand, strlen(pszCommand), fnCompletion);
}
