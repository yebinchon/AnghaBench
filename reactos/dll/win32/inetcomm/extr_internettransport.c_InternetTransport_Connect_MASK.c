#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szPort ;
struct addrinfo {scalar_t__ ai_addrlen; int /*<<< orphan*/ * ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; int /*<<< orphan*/ * ai_canonname; scalar_t__ ai_flags; } ;
typedef  int /*<<< orphan*/  service ;
typedef  int /*<<< orphan*/  host ;
typedef  int /*<<< orphan*/  boolean ;
struct TYPE_6__ {int /*<<< orphan*/  szServerName; scalar_t__ dwPort; } ;
struct TYPE_7__ {scalar_t__ Status; int Socket; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  fCommandLogging; TYPE_1__ ServerInfo; } ;
typedef  TYPE_1__* LPINETSERVER ;
typedef  int /*<<< orphan*/  LONG_PTR ;
typedef  TYPE_2__ InternetTransport ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  GWLP_USERDATA ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IXP_CONNECTED ; 
 int /*<<< orphan*/  IXP_CONNECTING ; 
 scalar_t__ IXP_DISCONNECTED ; 
 int /*<<< orphan*/  IXP_E_ALREADY_CONNECTED ; 
 int /*<<< orphan*/  IXP_E_CANT_FIND_HOST ; 
 int /*<<< orphan*/  IXP_FINDINGHOST ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int NI_NUMERICHOST ; 
 int NI_NUMERICSERV ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct addrinfo*) ; 
 int FUNC12 (int /*<<< orphan*/ ,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,char*,int,char*,int,int) ; 
 int /*<<< orphan*/  inetcomm ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,unsigned short) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wszClassName ; 

HRESULT FUNC16(InternetTransport *This,
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

    This->hwnd = FUNC0(wszClassName, wszClassName, 0, 0, 0, 0, 0, NULL, NULL, NULL, 0);
    if (!This->hwnd)
        return FUNC3(FUNC2());
    FUNC5(This->hwnd, GWLP_USERDATA, (LONG_PTR)This);

    hints.ai_flags          = 0;
    hints.ai_family         = PF_UNSPEC;
    hints.ai_socktype       = SOCK_STREAM;
    hints.ai_protocol       = IPPROTO_TCP;
    hints.ai_addrlen        = 0;
    hints.ai_addr           = NULL;
    hints.ai_canonname      = NULL;
    hints.ai_next           = NULL;

    FUNC14(szPort, sizeof(szPort), "%d", (unsigned short)pInetServer->dwPort);

    FUNC4(This, IXP_FINDINGHOST);

    ret = FUNC12(pInetServer->szServerName, szPort, &hints, &ai);
    if (ret)
    {
        FUNC1("getaddrinfo failed: %d\n", ret);
        return IXP_E_CANT_FIND_HOST;
    }

    for (ai_cur = ai; ai_cur; ai_cur = ai->ai_next)
    {
        int so;

        if (FUNC7(inetcomm))
        {
            char host[256];
            char service[256];
            FUNC13(ai_cur->ai_addr, ai_cur->ai_addrlen,
                host, sizeof(host), service, sizeof(service),
                NI_NUMERICHOST | NI_NUMERICSERV);
            FUNC6("trying %s:%s\n", host, service);
        }

        FUNC4(This, IXP_CONNECTING);

        so = FUNC15(ai_cur->ai_family, ai_cur->ai_socktype, ai_cur->ai_protocol);
        if (so == -1)
        {
            FUNC8("socket() failed\n");
            continue;
        }
        This->Socket = so;

        /* FIXME: set to async */

        if (0 > FUNC10(This->Socket, ai_cur->ai_addr, ai_cur->ai_addrlen))
        {
            FUNC8("connect() failed\n");
            FUNC9(This->Socket);
            continue;
        }
        FUNC4(This, IXP_CONNECTED);

        /* FIXME: call WSAAsyncSelect */

        FUNC11(ai);
        FUNC6("connected\n");
        return S_OK;
    }

    FUNC11(ai);

    return IXP_E_CANT_FIND_HOST;
}