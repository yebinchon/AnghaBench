
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Status; int cbBuffer; int hwnd; int Socket; scalar_t__ iCurrentBufferOffset; int pBuffer; scalar_t__ fnCompletion; } ;
typedef TYPE_1__ InternetTransport ;
typedef scalar_t__ INETXPORT_COMPLETION_FUNCTION ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 int FD_READ ;
 int GetProcessHeap () ;
 int HeapAlloc (int ,int ,int) ;
 scalar_t__ IXP_DISCONNECTED ;
 int IXP_E_BUSY ;
 int IXP_E_NOT_CONNECTED ;
 int IX_READLINE ;
 scalar_t__ SOCKET_ERROR ;
 int S_OK ;
 scalar_t__ WSAAsyncSelect (int ,int ,int ,int ) ;
 int WSAGetLastError () ;

HRESULT InternetTransport_ReadLine(InternetTransport *This,
    INETXPORT_COMPLETION_FUNCTION fnCompletion)
{
    if (This->Status == IXP_DISCONNECTED)
        return IXP_E_NOT_CONNECTED;

    if (This->fnCompletion)
        return IXP_E_BUSY;

    This->fnCompletion = fnCompletion;

    This->cbBuffer = 1024;
    This->pBuffer = HeapAlloc(GetProcessHeap(), 0, This->cbBuffer);
    This->iCurrentBufferOffset = 0;

    if (WSAAsyncSelect(This->Socket, This->hwnd, IX_READLINE, FD_READ) == SOCKET_ERROR)
    {
        ERR("WSAAsyncSelect failed with error %d\n", WSAGetLastError());

    }
    return S_OK;
}
