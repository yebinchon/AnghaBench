#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szCommandFormat ;
struct TYPE_9__ {int /*<<< orphan*/  hrServerError; } ;
struct TYPE_14__ {TYPE_1__ rIxpResult; } ;
struct TYPE_11__ {size_t cAddress; TYPE_2__* prgAddress; } ;
struct TYPE_12__ {TYPE_3__ rAddressList; } ;
struct TYPE_13__ {size_t ulCurrentAddressIndex; int /*<<< orphan*/  InetTransport; TYPE_4__ pending_message; } ;
struct TYPE_10__ {int addrtype; int /*<<< orphan*/  szEmail; } ;
typedef  TYPE_5__ SMTPTransport ;
typedef  TYPE_6__ SMTPRESPONSE ;
typedef  int /*<<< orphan*/  IInternetTransport ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int ADDR_TO ; 
 int ADDR_TOFROM_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMTPTransport_CallbackMessageReadDataResponse ; 
 int /*<<< orphan*/  SMTPTransport_CallbackMessageReadToResponse ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,char*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;
    SMTPRESPONSE response;
    HRESULT hr;

    FUNC7("\n");

    hr = FUNC6(This, pBuffer, &response);
    if (FUNC1(hr))
    {
        /* FIXME: handle error */
        return;
    }

    if (FUNC1(response.rIxpResult.hrServerError))
    {
        FUNC0("server error: %s\n", FUNC8(pBuffer));
        /* FIXME: handle error */
        return;
    }

    for (; This->ulCurrentAddressIndex < This->pending_message.rAddressList.cAddress; This->ulCurrentAddressIndex++)
    {
        FUNC7("address[%d]: %s\n", This->ulCurrentAddressIndex,
            This->pending_message.rAddressList.prgAddress[This->ulCurrentAddressIndex].szEmail);

        if ((This->pending_message.rAddressList.prgAddress[This->ulCurrentAddressIndex].addrtype & ADDR_TOFROM_MASK) == ADDR_TO)
        {
            static const char szCommandFormat[] = "RCPT TO: <%s>\n";
            char *szCommand;
            int len = sizeof(szCommandFormat) - 2 /* "%s" */ +
                FUNC10(This->pending_message.rAddressList.prgAddress[This->ulCurrentAddressIndex].szEmail);

            szCommand = FUNC3(FUNC2(), 0, len);
            if (!szCommand)
                return;

            FUNC9(szCommand, szCommandFormat,
                This->pending_message.rAddressList.prgAddress[This->ulCurrentAddressIndex].szEmail);

            This->ulCurrentAddressIndex++;
            hr = FUNC5(&This->InetTransport, szCommand,
                SMTPTransport_CallbackMessageReadToResponse);

            FUNC4(FUNC2(), 0, szCommand);
            return;
        }
    }

    hr = FUNC5(&This->InetTransport, "DATA\n",
        SMTPTransport_CallbackMessageReadDataResponse);
}