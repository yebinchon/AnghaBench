
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ pCallback; } ;
struct TYPE_8__ {int fDone; } ;
struct TYPE_7__ {TYPE_5__ InetTransport; } ;
typedef TYPE_1__ POP3Transport ;
typedef TYPE_2__ POP3RESPONSE ;
typedef int IPOP3Callback ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int IPOP3Callback_OnResponse (int *,TYPE_2__*) ;
 int InternetTransport_ReadLine (TYPE_5__*,void (*) (int *,char*,int)) ;
 int POP3Transport_ParseResponse (TYPE_1__*,char*,TYPE_2__*) ;
 int TRACE (char*) ;

__attribute__((used)) static void POP3Transport_CallbackProcessRETRResp(IInternetTransport *iface, char *pBuffer, int cbBuffer)
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

    if (!response.fDone)
    {
        InternetTransport_ReadLine(&This->InetTransport, POP3Transport_CallbackProcessRETRResp);
        return;
    }

    IPOP3Callback_OnResponse((IPOP3Callback *)This->InetTransport.pCallback, &response);
}
