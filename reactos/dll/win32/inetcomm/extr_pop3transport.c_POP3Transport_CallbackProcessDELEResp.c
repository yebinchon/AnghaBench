
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pCallback; } ;
struct TYPE_5__ {TYPE_1__ InetTransport; } ;
typedef TYPE_2__ POP3Transport ;
typedef int POP3RESPONSE ;
typedef int IPOP3Callback ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IPOP3Callback_OnResponse (int *,int *) ;
 int POP3Transport_ParseResponse (TYPE_2__*,char*,int *) ;
 int TRACE (char*) ;

__attribute__((used)) static void POP3Transport_CallbackProcessDELEResp(IInternetTransport *iface, char *pBuffer, int cbBuffer)
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

    IPOP3Callback_OnResponse((IPOP3Callback *)This->InetTransport.pCallback, &response);
}
