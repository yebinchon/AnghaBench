
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pstmMsg; } ;
struct TYPE_4__ {int InetTransport; TYPE_1__ pending_message; } ;
typedef TYPE_2__ SMTPTransport ;
typedef int IInternetTransport ;


 int IStream_Release (int ) ;
 int InternetTransport_DoCommand (int *,char*,int ) ;
 int SMTPTransport_CallbackMessageReadResponse ;

__attribute__((used)) static void SMTPTransport_CallbackMessageSendDOT(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;

    IStream_Release(This->pending_message.pstmMsg);
    InternetTransport_DoCommand(&This->InetTransport, "\n.\n",
        SMTPTransport_CallbackMessageReadResponse);
}
