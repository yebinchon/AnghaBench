
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pCallback; } ;
struct TYPE_4__ {TYPE_3__ InetTransport; } ;
typedef TYPE_1__ POP3Transport ;
typedef int POP3RESPONSE ;
typedef int IPOP3Callback ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IPOP3Callback_OnResponse (int *,int *) ;
 int IXP_AUTHORIZED ;
 int IXP_CONNECTED ;
 int InternetTransport_ChangeStatus (TYPE_3__*,int ) ;
 int POP3Transport_ParseResponse (TYPE_1__*,char*,int *) ;
 int TRACE (char*) ;

__attribute__((used)) static void POP3Transport_CallbackProcessPASSResp(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    POP3Transport *This = (POP3Transport *)iface;
    POP3RESPONSE response;
    HRESULT hr;

    TRACE("\n");

    hr = POP3Transport_ParseResponse(This, pBuffer, &response);
    if (FAILED(hr))
    {

        return;
    }

    InternetTransport_ChangeStatus(&This->InetTransport, IXP_AUTHORIZED);
    InternetTransport_ChangeStatus(&This->InetTransport, IXP_CONNECTED);

    IPOP3Callback_OnResponse((IPOP3Callback *)This->InetTransport.pCallback, &response);
}
