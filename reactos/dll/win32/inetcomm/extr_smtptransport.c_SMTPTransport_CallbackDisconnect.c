
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hrServerError; } ;
struct TYPE_8__ {TYPE_1__ rIxpResult; } ;
struct TYPE_7__ {int InetTransport; } ;
typedef TYPE_2__ SMTPTransport ;
typedef TYPE_3__ SMTPRESPONSE ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int InternetTransport_DropConnection (int *) ;
 int SMTPTransport_ParseResponse (TYPE_2__*,char*,TYPE_3__*) ;
 int TRACE (char*) ;
 int debugstr_a (char*) ;

__attribute__((used)) static void SMTPTransport_CallbackDisconnect(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;
    SMTPRESPONSE response;
    HRESULT hr;

    TRACE("\n");

    if (pBuffer)
    {
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
    }
    InternetTransport_DropConnection(&This->InetTransport);
}
