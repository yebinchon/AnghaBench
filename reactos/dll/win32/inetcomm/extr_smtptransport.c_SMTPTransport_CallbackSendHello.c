
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int dwFlags; } ;
struct TYPE_13__ {TYPE_2__ ServerInfo; scalar_t__ pCallback; } ;
struct TYPE_9__ {int pszResponse; int hrServerError; } ;
struct TYPE_12__ {TYPE_1__ rIxpResult; int command; int member_0; } ;
struct TYPE_11__ {int fESMTP; TYPE_7__ InetTransport; } ;
typedef TYPE_3__ SMTPTransport ;
typedef TYPE_4__ SMTPRESPONSE ;
typedef int ISMTPCallback ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,size_t) ;
 int HeapFree (int ,int ,char*) ;
 int ISF_QUERYAUTHSUPPORT ;
 int ISF_QUERYDSNSUPPORT ;
 int ISF_SSLONSAMEPORT ;
 int ISMTPCallback_OnResponse (int *,TYPE_4__*) ;
 int InternetTransport_DoCommand (TYPE_7__*,char*,int ) ;
 int SMTPTransport_CallbackRecvHelloResp ;
 int SMTPTransport_ParseResponse (TYPE_3__*,char*,TYPE_4__*) ;
 int SMTP_BANNER ;
 int TRACE (char*,...) ;
 int debugstr_a (char*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strstr (int ,char*) ;

__attribute__((used)) static void SMTPTransport_CallbackSendHello(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;
    SMTPRESPONSE response = { 0 };
    HRESULT hr;
    const char *pszHello;
    char *pszCommand;
    static const char szHostName[] = "localhost";

    TRACE("\n");

    hr = SMTPTransport_ParseResponse(This, pBuffer, &response);
    if (FAILED(hr))
    {

        return;
    }

    response.command = SMTP_BANNER;
    ISMTPCallback_OnResponse((ISMTPCallback *)This->InetTransport.pCallback, &response);

    if (FAILED(response.rIxpResult.hrServerError))
    {
        ERR("server error: %s\n", debugstr_a(pBuffer));

        return;
    }

    TRACE("(%s)\n", pBuffer);

    This->fESMTP = strstr(response.rIxpResult.pszResponse, "ESMTP") &&
        This->InetTransport.ServerInfo.dwFlags & (ISF_SSLONSAMEPORT|ISF_QUERYDSNSUPPORT|ISF_QUERYAUTHSUPPORT);

    if (This->fESMTP)
        pszHello = "EHLO ";
    else
        pszHello = "HELO ";

    pszCommand = HeapAlloc(GetProcessHeap(), 0, strlen(pszHello) + strlen(szHostName) + 2);
    strcpy(pszCommand, pszHello);
    strcat(pszCommand, szHostName);
    pszCommand[strlen(pszCommand)+1] = '\0';
    pszCommand[strlen(pszCommand)] = '\n';

    InternetTransport_DoCommand(&This->InetTransport, pszCommand,
        SMTPTransport_CallbackRecvHelloResp);

    HeapFree(GetProcessHeap(), 0, pszCommand);
}
