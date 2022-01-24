#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int dwFlags; } ;
struct TYPE_13__ {TYPE_2__ ServerInfo; scalar_t__ pCallback; } ;
struct TYPE_9__ {int /*<<< orphan*/  pszResponse; int /*<<< orphan*/  hrServerError; } ;
struct TYPE_12__ {TYPE_1__ rIxpResult; int /*<<< orphan*/  command; int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {int fESMTP; TYPE_7__ InetTransport; } ;
typedef  TYPE_3__ SMTPTransport ;
typedef  TYPE_4__ SMTPRESPONSE ;
typedef  int /*<<< orphan*/  ISMTPCallback ;
typedef  int /*<<< orphan*/  IInternetTransport ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int ISF_QUERYAUTHSUPPORT ; 
 int ISF_QUERYDSNSUPPORT ; 
 int ISF_SSLONSAMEPORT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMTPTransport_CallbackRecvHelloResp ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  SMTP_BANNER ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*) ; 
 size_t FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC14(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;
    SMTPRESPONSE response = { 0 };
    HRESULT hr;
    const char *pszHello;
    char *pszCommand;
    static const char szHostName[] = "localhost"; /* FIXME */

    FUNC8("\n");

    hr = FUNC7(This, pBuffer, &response);
    if (FUNC1(hr))
    {
        /* FIXME: handle error */
        return;
    }

    response.command = SMTP_BANNER;
    FUNC5((ISMTPCallback *)This->InetTransport.pCallback, &response);

    if (FUNC1(response.rIxpResult.hrServerError))
    {
        FUNC0("server error: %s\n", FUNC9(pBuffer));
        /* FIXME: handle error */
        return;
    }

    FUNC8("(%s)\n", pBuffer);

    This->fESMTP = FUNC13(response.rIxpResult.pszResponse, "ESMTP") &&
        This->InetTransport.ServerInfo.dwFlags & (ISF_SSLONSAMEPORT|ISF_QUERYDSNSUPPORT|ISF_QUERYAUTHSUPPORT);

    if (This->fESMTP)
        pszHello = "EHLO ";
    else
        pszHello = "HELO ";

    pszCommand = FUNC3(FUNC2(), 0, FUNC12(pszHello) + FUNC12(szHostName) + 2);
    FUNC11(pszCommand, pszHello);
    FUNC10(pszCommand, szHostName);
    pszCommand[FUNC12(pszCommand)+1] = '\0';
    pszCommand[FUNC12(pszCommand)] = '\n';

    FUNC6(&This->InetTransport, pszCommand,
        SMTPTransport_CallbackRecvHelloResp);

    FUNC4(FUNC2(), 0, pszCommand);
}