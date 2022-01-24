#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_7__ {int /*<<< orphan*/  hrServerError; } ;
struct TYPE_10__ {TYPE_1__ rIxpResult; } ;
struct TYPE_8__ {int /*<<< orphan*/  cbSize; int /*<<< orphan*/  pstmMsg; } ;
struct TYPE_9__ {int /*<<< orphan*/  InetTransport; TYPE_2__ pending_message; } ;
typedef  TYPE_3__ SMTPTransport ;
typedef  TYPE_4__ SMTPRESPONSE ;
typedef  int /*<<< orphan*/  IInternetTransport ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMTPTransport_CallbackMessageSendDOT ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;
    SMTPRESPONSE response;
    HRESULT hr;
    char *pszBuffer;
    ULONG cbSize;

    FUNC8("\n");

    hr = FUNC7(This, pBuffer, &response);
    if (FUNC1(hr))
    {
        /* FIXME: handle error */
        return;
    }

    if (FUNC1(response.rIxpResult.hrServerError))
    {
        FUNC0("server error: %s\n", FUNC9(pBuffer));
        /* FIXME: handle error */
        return;
    }

    pszBuffer = FUNC3(FUNC2(), 0, This->pending_message.cbSize);
    hr = FUNC5(This->pending_message.pstmMsg, pszBuffer, This->pending_message.cbSize, NULL);
    if (FUNC1(hr))
    {
        /* FIXME: handle error */
        return;
    }
    cbSize = This->pending_message.cbSize;

    /* FIXME: map "\n.\n" to "\n..\n", reallocate memory, update cbSize */

    /* FIXME: properly stream the message rather than writing it all at once */

    hr = FUNC6(&This->InetTransport, pszBuffer, cbSize,
        SMTPTransport_CallbackMessageSendDOT);

    FUNC4(FUNC2(), 0, pszBuffer);
}