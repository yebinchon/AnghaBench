
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pass ;
struct TYPE_6__ {char* szPassword; } ;
struct TYPE_8__ {TYPE_1__ ServerInfo; scalar_t__ pCallback; } ;
struct TYPE_7__ {TYPE_5__ InetTransport; } ;
typedef TYPE_2__ POP3Transport ;
typedef int POP3RESPONSE ;
typedef int IPOP3Callback ;
typedef int IInternetTransport ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int IPOP3Callback_OnResponse (int *,int *) ;
 int InternetTransport_DoCommand (TYPE_5__*,char*,int ) ;
 int POP3Transport_CallbackRecvPASSResp ;
 int POP3Transport_ParseResponse (TYPE_2__*,char*,int *) ;
 int POP3_PASS ;
 int TRACE (char*) ;
 int init_parser (TYPE_2__*,int ) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;

__attribute__((used)) static void POP3Transport_CallbackProcessUSERResp(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    static const char pass[] = "PASS ";
    POP3Transport *This = (POP3Transport *)iface;
    POP3RESPONSE response;
    char *command;
    int len;
    HRESULT hr;

    TRACE("\n");

    hr = POP3Transport_ParseResponse(This, pBuffer, &response);
    if (FAILED(hr))
    {

        return;
    }

    IPOP3Callback_OnResponse((IPOP3Callback *)This->InetTransport.pCallback, &response);

    len = sizeof(pass) + strlen(This->InetTransport.ServerInfo.szPassword) + 2;
    command = HeapAlloc(GetProcessHeap(), 0, len);

    strcpy(command, pass);
    strcat(command, This->InetTransport.ServerInfo.szPassword);
    strcat(command, "\r\n");

    init_parser(This, POP3_PASS);

    InternetTransport_DoCommand(&This->InetTransport, command, POP3Transport_CallbackRecvPASSResp);
    HeapFree(GetProcessHeap(), 0, command);
}
