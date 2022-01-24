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
typedef  scalar_t__ UINT16 ;
struct TYPE_3__ {scalar_t__ withoutCard; scalar_t__ descr; scalar_t__ hCard; } ;
typedef  TYPE_1__* PKULL_M_ACR_COMM ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  const BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ const ACR_MAX_LEN ; 
 int FALSE ; 
 int /*<<< orphan*/  IOCTL_CCID_ESCAPE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ SCARD_S_SUCCESS ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,scalar_t__ const,int /*<<< orphan*/  const*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__ const,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,scalar_t__ const,int) ; 

BOOL FUNC5(PKULL_M_ACR_COMM comm, const BYTE *pbData, const UINT16 cbData, BYTE *pbResult, UINT16 *cbResult)
{
	BOOL status = FALSE;
	LONG scStatus;
	DWORD ret = *cbResult;

	if(comm->hCard)
	{
		if(cbData <= ACR_MAX_LEN)
		{
			if(comm->descr)
			{
				FUNC3(L"ACR  > ");
				FUNC4(pbData, cbData, 1);
				FUNC3(L"\n");
			}
			scStatus = comm->withoutCard ?
				FUNC1(comm->hCard, IOCTL_CCID_ESCAPE, pbData, cbData, pbResult, *cbResult, &ret) :
				FUNC2(comm->hCard, NULL, pbData, cbData, NULL, pbResult, &ret);

			if(scStatus == SCARD_S_SUCCESS)
			{
				if(comm->descr)
				{
					FUNC3(L"ACR  < ");
					FUNC4(pbResult, ret, 1);
					FUNC3(L"\n");
				}
				if((status = (ret <= *cbResult)))
					*cbResult = (UINT16) ret;
			}
			else FUNC0(L"%s: 0x%08x\n", comm->withoutCard ? L"SCardControl" : L"SCardTransmit", scStatus);
		}
		else FUNC0(L"cbData = %hu / cbResult = %hu (max is %hu)\n", cbData, cbResult, ACR_MAX_LEN);
	}
	else FUNC0(L"No handle to Card\n");
	return status;
}