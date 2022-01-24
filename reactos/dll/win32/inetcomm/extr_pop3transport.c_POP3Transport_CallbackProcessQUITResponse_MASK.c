#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ pCallback; } ;
struct TYPE_4__ {TYPE_3__ InetTransport; } ;
typedef  TYPE_1__ POP3Transport ;
typedef  int /*<<< orphan*/  POP3RESPONSE ;
typedef  int /*<<< orphan*/  IPOP3Callback ;
typedef  int /*<<< orphan*/  IInternetTransport ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static void FUNC6(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    POP3Transport *This = (POP3Transport *)iface;
    POP3RESPONSE response;
    HRESULT hr;

    FUNC4("%s\n", FUNC5(pBuffer, cbBuffer));

    hr = FUNC3(This, pBuffer, &response);
    if (FUNC0(hr))
    {
        /* FIXME: handle error */
        return;
    }

    FUNC1((IPOP3Callback *)This->InetTransport.pCallback, &response);
    FUNC2(&This->InetTransport);
}