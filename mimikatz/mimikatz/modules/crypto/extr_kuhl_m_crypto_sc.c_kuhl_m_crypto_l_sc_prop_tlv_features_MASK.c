#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  data ;
typedef  int /*<<< orphan*/  USHORT ;
typedef  int /*<<< orphan*/  SCARDHANDLE ;
typedef  int /*<<< orphan*/ * PUSHORT ;
typedef  int /*<<< orphan*/ * PDWORD ;
typedef  int* LPCBYTE ;
typedef  scalar_t__ LONG ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int) ; 
 scalar_t__ SCARD_S_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 

BOOL FUNC4(SCARDHANDLE hCard, DWORD ctlCode)
{
	DWORD dwRet;
	BYTE data[256];
	LPCBYTE cur;
	LONG status;

	status = FUNC1(hCard, ctlCode, NULL, 0, data, sizeof(data), &dwRet);
	if(status == SCARD_S_SUCCESS)
	{
		for(cur = data; cur < (data + dwRet); cur += cur[1] + 2)
		{
			FUNC2(L"    \\ %02x - ", cur[0], cur[1]);
			switch(cur[0])
			{
			case 1:
				if(cur[1] == sizeof(USHORT))
					FUNC2(L"LCD Layout: %hhux%hhu\n", cur[2], cur[3]);
				break;
			case 2:
				if(cur[1] == sizeof(BYTE))
					FUNC2(L"Entry Validation Condition: 0x%02x\n", cur[2]);
				break;
			case 3:
				if(cur[1] == sizeof(BYTE))
					FUNC2(L"TimeOut2: %hhu\n", cur[2]);
				break;
			case 4:
				if(cur[1] == sizeof(USHORT))
					FUNC2(L"LCD Max Characters: %hu\n", *(PUSHORT) (cur + 2));
				break;
			case 5:
				if(cur[1] == sizeof(USHORT))
					FUNC2(L"LCD Max Lines: %hu\n", *(PUSHORT) (cur + 2));
				break;
			case 6:
				if(cur[1] == sizeof(BYTE))
					FUNC2(L"Min Pin Size: %hhu\n", cur[2]);
				break;
			case 7:
				if(cur[1] == sizeof(BYTE))
					FUNC2(L"Max Pin Size: %hhu\n", cur[2]);
				break;
			case 8:
				FUNC2(L"FirmwareID: %.*S\n", cur[1], cur + 2);
				break;
			case 9:
				if(cur[1] == sizeof(BYTE))
				{
					FUNC2(L"PPDU Support: %s", cur[2] ? L"YES" : L"NO");
					if(cur[2] & 1)
						FUNC2(L" - SCardControl(FEATURE_CCID_ESC_COMMAND)");
					if(cur[2] & 2)
						FUNC2(L" - SCardTransmit");
					FUNC2(L"\n");
				}
				break;
			case 0x0a:
				if(cur[1] == sizeof(DWORD))
					FUNC2(L"Max APDU Data Size: %u - 0x%x\n", *(PDWORD) (cur + 2), *(PDWORD) (cur + 2));
				break;
			case 0x0b:
				if(cur[1] == sizeof(USHORT))
					FUNC2(L"USB VendorID : %04x\n", *(PUSHORT) (cur + 2));
				break;
			case 0x0c:
				if(cur[1] == sizeof(USHORT))
					FUNC2(L"USB ProductID: %04x\n", *(PUSHORT) (cur + 2));
				break;

			default:
				FUNC3(cur + 2, cur[1], 1);
				FUNC2(L"\n");
			}
		}
	}
	else FUNC0(L"SCardControl(!FEATURE_GET_TLV_PROPERTIES!): 0x%08x (%u)\n", status, dwRet);
	return FALSE;
}