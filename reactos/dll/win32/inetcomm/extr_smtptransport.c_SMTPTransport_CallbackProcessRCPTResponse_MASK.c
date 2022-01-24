#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  hrServerError; } ;
struct TYPE_11__ {TYPE_2__ rIxpResult; int /*<<< orphan*/  command; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {scalar_t__ pCallback; } ;
struct TYPE_10__ {TYPE_1__ InetTransport; int /*<<< orphan*/ * addrlist; } ;
typedef  TYPE_3__ SMTPTransport ;
typedef  TYPE_4__ SMTPRESPONSE ;
typedef  int /*<<< orphan*/  ISMTPCallback ;
typedef  int /*<<< orphan*/  IInternetTransport ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  SMTP_RCPT ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;
    SMTPRESPONSE response = { 0 };
    HRESULT hr;

    FUNC6("\n");

    FUNC3(FUNC2(), 0, This->addrlist);
    This->addrlist = NULL;

    hr = FUNC5(This, pBuffer, &response);
    if (FUNC1(hr))
    {
        /* FIXME: handle error */
        return;
    }

    response.command = SMTP_RCPT;
    FUNC4((ISMTPCallback *)This->InetTransport.pCallback, &response);

    if (FUNC1(response.rIxpResult.hrServerError))
    {
        FUNC0("server error: %s\n", FUNC7(pBuffer));
        /* FIXME: handle error */
        return;
    }
}