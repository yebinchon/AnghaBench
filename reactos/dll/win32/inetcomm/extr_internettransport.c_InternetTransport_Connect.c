
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int szPort ;
struct addrinfo {scalar_t__ ai_addrlen; int * ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; int * ai_canonname; scalar_t__ ai_flags; } ;
typedef int service ;
typedef int host ;
typedef int boolean ;
struct TYPE_6__ {int szServerName; scalar_t__ dwPort; } ;
struct TYPE_7__ {scalar_t__ Status; int Socket; int hwnd; int fCommandLogging; TYPE_1__ ServerInfo; } ;
typedef TYPE_1__* LPINETSERVER ;
typedef int LONG_PTR ;
typedef TYPE_2__ InternetTransport ;
typedef int HRESULT ;


 int CreateWindowW (int ,int ,int ,int ,int ,int ,int ,int *,int *,int *,int ) ;
 int ERR (char*,int) ;
 int GWLP_USERDATA ;
 int GetLastError () ;
 int HRESULT_FROM_WIN32 (int ) ;
 int IPPROTO_TCP ;
 int IXP_CONNECTED ;
 int IXP_CONNECTING ;
 scalar_t__ IXP_DISCONNECTED ;
 int IXP_E_ALREADY_CONNECTED ;
 int IXP_E_CANT_FIND_HOST ;
 int IXP_FINDINGHOST ;
 int InternetTransport_ChangeStatus (TYPE_2__*,int ) ;
 int NI_NUMERICHOST ;
 int NI_NUMERICSERV ;
 int PF_UNSPEC ;
 int SOCK_STREAM ;
 int S_OK ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRACE (char*,...) ;
 scalar_t__ TRACE_ON (int ) ;
 int WARN (char*) ;
 int closesocket (int) ;
 scalar_t__ connect (int,int *,scalar_t__) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (int ,char*,struct addrinfo*,struct addrinfo**) ;
 int getnameinfo (int *,scalar_t__,char*,int,char*,int,int) ;
 int inetcomm ;
 int snprintf (char*,int,char*,unsigned short) ;
 int socket (int ,int ,int ) ;
 int wszClassName ;

HRESULT InternetTransport_Connect(InternetTransport *This,
    LPINETSERVER pInetServer, boolean fAuthenticate, boolean fCommandLogging)
{
    struct addrinfo *ai;
    struct addrinfo *ai_cur;
    struct addrinfo hints;
    int ret;
    char szPort[10];

    if (This->Status != IXP_DISCONNECTED)
        return IXP_E_ALREADY_CONNECTED;

    This->ServerInfo = *pInetServer;
    This->fCommandLogging = fCommandLogging;

    This->hwnd = CreateWindowW(wszClassName, wszClassName, 0, 0, 0, 0, 0, ((void*)0), ((void*)0), ((void*)0), 0);
    if (!This->hwnd)
        return HRESULT_FROM_WIN32(GetLastError());
    SetWindowLongPtrW(This->hwnd, GWLP_USERDATA, (LONG_PTR)This);

    hints.ai_flags = 0;
    hints.ai_family = PF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_protocol = IPPROTO_TCP;
    hints.ai_addrlen = 0;
    hints.ai_addr = ((void*)0);
    hints.ai_canonname = ((void*)0);
    hints.ai_next = ((void*)0);

    snprintf(szPort, sizeof(szPort), "%d", (unsigned short)pInetServer->dwPort);

    InternetTransport_ChangeStatus(This, IXP_FINDINGHOST);

    ret = getaddrinfo(pInetServer->szServerName, szPort, &hints, &ai);
    if (ret)
    {
        ERR("getaddrinfo failed: %d\n", ret);
        return IXP_E_CANT_FIND_HOST;
    }

    for (ai_cur = ai; ai_cur; ai_cur = ai->ai_next)
    {
        int so;

        if (TRACE_ON(inetcomm))
        {
            char host[256];
            char service[256];
            getnameinfo(ai_cur->ai_addr, ai_cur->ai_addrlen,
                host, sizeof(host), service, sizeof(service),
                NI_NUMERICHOST | NI_NUMERICSERV);
            TRACE("trying %s:%s\n", host, service);
        }

        InternetTransport_ChangeStatus(This, IXP_CONNECTING);

        so = socket(ai_cur->ai_family, ai_cur->ai_socktype, ai_cur->ai_protocol);
        if (so == -1)
        {
            WARN("socket() failed\n");
            continue;
        }
        This->Socket = so;



        if (0 > connect(This->Socket, ai_cur->ai_addr, ai_cur->ai_addrlen))
        {
            WARN("connect() failed\n");
            closesocket(This->Socket);
            continue;
        }
        InternetTransport_ChangeStatus(This, IXP_CONNECTED);



        freeaddrinfo(ai);
        TRACE("connected\n");
        return S_OK;
    }

    freeaddrinfo(ai);

    return IXP_E_CANT_FIND_HOST;
}
