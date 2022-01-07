
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int user ;
struct TYPE_4__ {char* szUserName; } ;
struct TYPE_6__ {TYPE_1__ ServerInfo; } ;
struct TYPE_5__ {TYPE_3__ InetTransport; } ;
typedef TYPE_2__ POP3Transport ;
typedef int IInternetTransport ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int InternetTransport_DoCommand (TYPE_3__*,char*,int ) ;
 int POP3Transport_CallbackRecvUSERResp ;
 int TRACE (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static void POP3Transport_CallbackSendUSERCmd(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    static const char user[] = "USER ";
    POP3Transport *This = (POP3Transport *)iface;
    char *command;
    int len;

    TRACE("\n");

    len = sizeof(user) + strlen(This->InetTransport.ServerInfo.szUserName) + 2;
    command = HeapAlloc(GetProcessHeap(), 0, len);

    strcpy(command, user);
    strcat(command, This->InetTransport.ServerInfo.szUserName);
    strcat(command, "\r\n");
    InternetTransport_DoCommand(&This->InetTransport, command, POP3Transport_CallbackRecvUSERResp);

    HeapFree(GetProcessHeap(), 0, command);
}
