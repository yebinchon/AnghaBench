
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int szCommandFormat ;
struct TYPE_9__ {int hrServerError; } ;
struct TYPE_14__ {TYPE_1__ rIxpResult; } ;
struct TYPE_11__ {size_t cAddress; TYPE_2__* prgAddress; } ;
struct TYPE_12__ {TYPE_3__ rAddressList; } ;
struct TYPE_13__ {size_t ulCurrentAddressIndex; int InetTransport; TYPE_4__ pending_message; } ;
struct TYPE_10__ {int addrtype; int szEmail; } ;
typedef TYPE_5__ SMTPTransport ;
typedef TYPE_6__ SMTPRESPONSE ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 int ADDR_TO ;
 int ADDR_TOFROM_MASK ;
 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int InternetTransport_DoCommand (int *,char*,int ) ;
 int SMTPTransport_CallbackMessageReadDataResponse ;
 int SMTPTransport_CallbackMessageReadToResponse ;
 int SMTPTransport_ParseResponse (TYPE_5__*,char*,TYPE_6__*) ;
 int TRACE (char*,...) ;
 int debugstr_a (char*) ;
 int sprintf (char*,char const*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void SMTPTransport_CallbackMessageSendTo(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;
    SMTPRESPONSE response;
    HRESULT hr;

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

    for (; This->ulCurrentAddressIndex < This->pending_message.rAddressList.cAddress; This->ulCurrentAddressIndex++)
    {
        TRACE("address[%d]: %s\n", This->ulCurrentAddressIndex,
            This->pending_message.rAddressList.prgAddress[This->ulCurrentAddressIndex].szEmail);

        if ((This->pending_message.rAddressList.prgAddress[This->ulCurrentAddressIndex].addrtype & ADDR_TOFROM_MASK) == ADDR_TO)
        {
            static const char szCommandFormat[] = "RCPT TO: <%s>\n";
            char *szCommand;
            int len = sizeof(szCommandFormat) - 2 +
                strlen(This->pending_message.rAddressList.prgAddress[This->ulCurrentAddressIndex].szEmail);

            szCommand = HeapAlloc(GetProcessHeap(), 0, len);
            if (!szCommand)
                return;

            sprintf(szCommand, szCommandFormat,
                This->pending_message.rAddressList.prgAddress[This->ulCurrentAddressIndex].szEmail);

            This->ulCurrentAddressIndex++;
            hr = InternetTransport_DoCommand(&This->InetTransport, szCommand,
                SMTPTransport_CallbackMessageReadToResponse);

            HeapFree(GetProcessHeap(), 0, szCommand);
            return;
        }
    }

    hr = InternetTransport_DoCommand(&This->InetTransport, "DATA\n",
        SMTPTransport_CallbackMessageReadDataResponse);
}
