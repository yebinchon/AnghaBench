
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int response ;
struct TYPE_13__ {scalar_t__ pCallback; } ;
struct TYPE_10__ {int hrServerError; } ;
struct TYPE_12__ {scalar_t__ fDone; int command; TYPE_1__ rIxpResult; int member_0; } ;
struct TYPE_11__ {TYPE_7__ InetTransport; scalar_t__ fESMTP; } ;
typedef TYPE_2__ SMTPTransport ;
typedef TYPE_3__ SMTPRESPONSE ;
typedef int ISMTPCallback ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int ISMTPCallback_OnResponse (int *,TYPE_3__*) ;
 int IXP_AUTHORIZED ;
 int IXP_CONNECTED ;
 int InternetTransport_ChangeStatus (TYPE_7__*,int ) ;
 int InternetTransport_ReadLine (TYPE_7__*,void (*) (int *,char*,int)) ;
 int SMTPTransport_ParseResponse (TYPE_2__*,char*,TYPE_3__*) ;
 int SMTP_CONNECTED ;
 int SMTP_EHLO ;
 int SMTP_HELO ;
 int TRACE (char*) ;
 scalar_t__ TRUE ;
 int debugstr_a (char*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void SMTPTransport_CallbackProcessHelloResp(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;
    SMTPRESPONSE response = { 0 };
    HRESULT hr;

    TRACE("\n");

    hr = SMTPTransport_ParseResponse(This, pBuffer, &response);
    if (FAILED(hr))
    {

        return;
    }

    response.command = This->fESMTP ? SMTP_EHLO : SMTP_HELO;
    ISMTPCallback_OnResponse((ISMTPCallback *)This->InetTransport.pCallback, &response);

    if (FAILED(response.rIxpResult.hrServerError))
    {
        ERR("server error: %s\n", debugstr_a(pBuffer));

        return;
    }

    if (!response.fDone)
    {
        InternetTransport_ReadLine(&This->InetTransport,
            SMTPTransport_CallbackProcessHelloResp);
        return;
    }




    InternetTransport_ChangeStatus(&This->InetTransport, IXP_AUTHORIZED);
    InternetTransport_ChangeStatus(&This->InetTransport, IXP_CONNECTED);

    memset(&response, 0, sizeof(response));
    response.command = SMTP_CONNECTED;
    response.fDone = TRUE;
    ISMTPCallback_OnResponse((ISMTPCallback *)This->InetTransport.pCallback, &response);
}
