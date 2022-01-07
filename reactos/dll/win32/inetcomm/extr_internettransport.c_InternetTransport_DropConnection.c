
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Status; int * hwnd; int Socket; } ;
typedef TYPE_1__ InternetTransport ;
typedef int HRESULT ;


 int DestroyWindow (int *) ;
 scalar_t__ IXP_DISCONNECTED ;
 int IXP_E_NOT_CONNECTED ;
 int InternetTransport_ChangeStatus (TYPE_1__*,scalar_t__) ;
 int SD_BOTH ;
 int S_OK ;
 int closesocket (int ) ;
 int shutdown (int ,int ) ;

HRESULT InternetTransport_DropConnection(InternetTransport *This)
{
    if (This->Status == IXP_DISCONNECTED)
        return IXP_E_NOT_CONNECTED;

    shutdown(This->Socket, SD_BOTH);

    closesocket(This->Socket);

    DestroyWindow(This->hwnd);
    This->hwnd = ((void*)0);

    InternetTransport_ChangeStatus(This, IXP_DISCONNECTED);

    return S_OK;
}
