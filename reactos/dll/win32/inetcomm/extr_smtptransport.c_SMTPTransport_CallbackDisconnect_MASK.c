#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hrServerError; } ;
struct TYPE_8__ {TYPE_1__ rIxpResult; } ;
struct TYPE_7__ {int /*<<< orphan*/  InetTransport; } ;
typedef  TYPE_2__ SMTPTransport ;
typedef  TYPE_3__ SMTPRESPONSE ;
typedef  int /*<<< orphan*/  IInternetTransport ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    SMTPTransport *This = (SMTPTransport *)iface;
    SMTPRESPONSE response;
    HRESULT hr;

    FUNC4("\n");

    if (pBuffer)
    {
        hr = FUNC3(This, pBuffer, &response);
        if (FUNC1(hr))
        {
            /* FIXME: handle error */
            return;
        }

        if (FUNC1(response.rIxpResult.hrServerError))
        {
            FUNC0("server error: %s\n", FUNC5(pBuffer));
            /* FIXME: handle error */
            return;
        }
    }
    FUNC2(&This->InetTransport);
}