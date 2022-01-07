
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int InetTransport; } ;
typedef TYPE_1__ SMTPTransport ;
typedef int IInternetTransport ;


 int InternetTransport_ReadLine (int *,int ) ;
 int SMTPTransport_CallbackProcessDATAResponse ;
 int TRACE (char*) ;

__attribute__((used)) static void SMTPTransport_CallbackReadDATAResponse(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;

    TRACE("\n");
    InternetTransport_ReadLine(&This->InetTransport, SMTPTransport_CallbackProcessDATAResponse);
}
