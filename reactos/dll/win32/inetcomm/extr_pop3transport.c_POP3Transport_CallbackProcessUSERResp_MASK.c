#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pass ;
struct TYPE_6__ {char* szPassword; } ;
struct TYPE_8__ {TYPE_1__ ServerInfo; scalar_t__ pCallback; } ;
struct TYPE_7__ {TYPE_5__ InetTransport; } ;
typedef  TYPE_2__ POP3Transport ;
typedef  int /*<<< orphan*/  POP3RESPONSE ;
typedef  int /*<<< orphan*/  IPOP3Callback ;
typedef  int /*<<< orphan*/  IInternetTransport ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POP3Transport_CallbackRecvPASSResp ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  POP3_PASS ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    static const char pass[] = "PASS ";
    POP3Transport *This = (POP3Transport *)iface;
    POP3RESPONSE response;
    char *command;
    int len;
    HRESULT hr;

    FUNC7("\n");

    hr = FUNC6(This, pBuffer, &response);
    if (FUNC0(hr))
    {
        /* FIXME: handle error */
        return;
    }

    FUNC4((IPOP3Callback *)This->InetTransport.pCallback, &response);

    len = sizeof(pass) + FUNC11(This->InetTransport.ServerInfo.szPassword) + 2; /* "\r\n" */
    command = FUNC2(FUNC1(), 0, len);

    FUNC10(command, pass);
    FUNC9(command, This->InetTransport.ServerInfo.szPassword);
    FUNC9(command, "\r\n");

    FUNC8(This, POP3_PASS);

    FUNC5(&This->InetTransport, command, POP3Transport_CallbackRecvPASSResp);
    FUNC3(FUNC1(), 0, command);
}