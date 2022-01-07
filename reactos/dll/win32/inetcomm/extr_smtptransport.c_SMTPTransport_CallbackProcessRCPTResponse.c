
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int hrServerError; } ;
struct TYPE_11__ {TYPE_2__ rIxpResult; int command; int member_0; } ;
struct TYPE_8__ {scalar_t__ pCallback; } ;
struct TYPE_10__ {TYPE_1__ InetTransport; int * addrlist; } ;
typedef TYPE_3__ SMTPTransport ;
typedef TYPE_4__ SMTPRESPONSE ;
typedef int ISMTPCallback ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int ISMTPCallback_OnResponse (int *,TYPE_4__*) ;
 int SMTPTransport_ParseResponse (TYPE_3__*,char*,TYPE_4__*) ;
 int SMTP_RCPT ;
 int TRACE (char*) ;
 int debugstr_a (char*) ;

__attribute__((used)) static void SMTPTransport_CallbackProcessRCPTResponse(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;
    SMTPRESPONSE response = { 0 };
    HRESULT hr;

    TRACE("\n");

    HeapFree(GetProcessHeap(), 0, This->addrlist);
    This->addrlist = ((void*)0);

    hr = SMTPTransport_ParseResponse(This, pBuffer, &response);
    if (FAILED(hr))
    {

        return;
    }

    response.command = SMTP_RCPT;
    ISMTPCallback_OnResponse((ISMTPCallback *)This->InetTransport.pCallback, &response);

    if (FAILED(response.rIxpResult.hrServerError))
    {
        ERR("server error: %s\n", debugstr_a(pBuffer));

        return;
    }
}
