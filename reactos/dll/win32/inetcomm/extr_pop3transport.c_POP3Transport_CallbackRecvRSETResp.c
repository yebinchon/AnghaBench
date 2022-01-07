
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int InetTransport; } ;
typedef TYPE_1__ POP3Transport ;
typedef int IInternetTransport ;


 int InternetTransport_ReadLine (int *,int ) ;
 int POP3Transport_CallbackProcessRSETResp ;
 int TRACE (char*) ;

__attribute__((used)) static void POP3Transport_CallbackRecvRSETResp(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    POP3Transport *This = (POP3Transport *)iface;

    TRACE("\n");
    InternetTransport_ReadLine(&This->InetTransport, POP3Transport_CallbackProcessRSETResp);
}
