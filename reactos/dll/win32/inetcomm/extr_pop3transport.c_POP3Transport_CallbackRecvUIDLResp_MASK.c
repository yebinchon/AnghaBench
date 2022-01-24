#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  InetTransport; } ;
typedef  TYPE_1__ POP3Transport ;
typedef  int /*<<< orphan*/  IInternetTransport ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  POP3Transport_CallbackProcessUIDLResp ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(IInternetTransport *iface, char *pBuffer, int cbBuffer)
{
    POP3Transport *This = (POP3Transport *)iface;

    FUNC1("\n");
    FUNC0(&This->InetTransport, POP3Transport_CallbackProcessUIDLResp);
}