#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ hCard; } ;
typedef  TYPE_1__* PKULL_M_ACR_COMM ;
typedef  scalar_t__ LONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  SCARD_LEAVE_CARD ; 
 scalar_t__ SCARD_S_SUCCESS ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(PKULL_M_ACR_COMM comm)
{
	LONG scStatus;
	if(comm->hCard)
	{
		scStatus = FUNC1(comm->hCard, SCARD_LEAVE_CARD);
		if(scStatus == SCARD_S_SUCCESS)
			comm->hCard = 0;
		else FUNC0(L"SCardDisconnect: 0x%08x\n", scStatus);
	}
}