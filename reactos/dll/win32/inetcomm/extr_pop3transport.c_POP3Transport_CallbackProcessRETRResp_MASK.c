#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ pCallback; } ;
struct TYPE_8__ {int /*<<< orphan*/  fDone; } ;
struct TYPE_7__ {TYPE_5__ InetTransport; } ;
typedef  TYPE_1__ POP3Transport ;
typedef  TYPE_2__ POP3RESPONSE ;
typedef  int /*<<< orphan*/  IPOP3Callback ;
typedef  int /*<<< orphan*/  IInternetTransport ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,void (*) (int /*<<< orphan*/ *,char*,int)) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    POP3Transport *This = (POP3Transport *)iface;
    POP3RESPONSE response;
    HRESULT hr;

    FUNC4("\n");

    hr = FUNC3(This, pBuffer, &response);
    if (FUNC0(hr))
    {
        /* FIXME: handle error */
        return;
    }

    FUNC1((IPOP3Callback *)This->InetTransport.pCallback, &response);

    if (!response.fDone)
    {
        FUNC2(&This->InetTransport, POP3Transport_CallbackProcessRETRResp);
        return;
    }

    FUNC1((IPOP3Callback *)This->InetTransport.pCallback, &response);
}