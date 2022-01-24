#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  user ;
struct TYPE_4__ {char* szUserName; } ;
struct TYPE_6__ {TYPE_1__ ServerInfo; } ;
struct TYPE_5__ {TYPE_3__ InetTransport; } ;
typedef  TYPE_2__ POP3Transport ;
typedef  int /*<<< orphan*/  IInternetTransport ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POP3Transport_CallbackRecvUSERResp ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    static const char user[] = "USER ";
    POP3Transport *This = (POP3Transport *)iface;
    char *command;
    int len;

    FUNC4("\n");

    len = sizeof(user) + FUNC7(This->InetTransport.ServerInfo.szUserName) + 2; /* "\r\n" */
    command = FUNC1(FUNC0(), 0, len);

    FUNC6(command, user);
    FUNC5(command, This->InetTransport.ServerInfo.szUserName);
    FUNC5(command, "\r\n");
    FUNC3(&This->InetTransport, command, POP3Transport_CallbackRecvUSERResp);

    FUNC2(FUNC0(), 0, command);
}