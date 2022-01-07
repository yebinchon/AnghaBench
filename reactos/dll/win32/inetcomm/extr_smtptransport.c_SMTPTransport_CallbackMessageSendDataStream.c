
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int hrServerError; } ;
struct TYPE_10__ {TYPE_1__ rIxpResult; } ;
struct TYPE_8__ {int cbSize; int pstmMsg; } ;
struct TYPE_9__ {int InetTransport; TYPE_2__ pending_message; } ;
typedef TYPE_3__ SMTPTransport ;
typedef TYPE_4__ SMTPRESPONSE ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int ) ;
 int HeapFree (int ,int ,char*) ;
 int IStream_Read (int ,char*,int ,int *) ;
 int InternetTransport_Write (int *,char*,int ,int ) ;
 int SMTPTransport_CallbackMessageSendDOT ;
 int SMTPTransport_ParseResponse (TYPE_3__*,char*,TYPE_4__*) ;
 int TRACE (char*) ;
 int debugstr_a (char*) ;

__attribute__((used)) static void SMTPTransport_CallbackMessageSendDataStream(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;
    SMTPRESPONSE response;
    HRESULT hr;
    char *pszBuffer;
    ULONG cbSize;

    TRACE("\n");

    hr = SMTPTransport_ParseResponse(This, pBuffer, &response);
    if (FAILED(hr))
    {

        return;
    }

    if (FAILED(response.rIxpResult.hrServerError))
    {
        ERR("server error: %s\n", debugstr_a(pBuffer));

        return;
    }

    pszBuffer = HeapAlloc(GetProcessHeap(), 0, This->pending_message.cbSize);
    hr = IStream_Read(This->pending_message.pstmMsg, pszBuffer, This->pending_message.cbSize, ((void*)0));
    if (FAILED(hr))
    {

        return;
    }
    cbSize = This->pending_message.cbSize;





    hr = InternetTransport_Write(&This->InetTransport, pszBuffer, cbSize,
        SMTPTransport_CallbackMessageSendDOT);

    HeapFree(GetProcessHeap(), 0, pszBuffer);
}
