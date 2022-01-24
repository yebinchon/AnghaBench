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
typedef  int /*<<< orphan*/  buffer ;
typedef  int UINT16 ;
struct TYPE_3__ {scalar_t__ descr; int /*<<< orphan*/  suppdata; scalar_t__ (* communicator ) (int*,int,int*,int*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__* PKULL_M_PN532_COMM ;
typedef  int BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int PN532_Host_PN532 ; 
 int PN532_MAX_LEN ; 
 int PN532_PN532_Host ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int*,int const*,int const) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 scalar_t__ FUNC4 (int*,int,int*,int*,int /*<<< orphan*/ ) ; 

BOOL FUNC5(PKULL_M_PN532_COMM comm, const BYTE pn532_cmd, const BYTE *pbData, const UINT16 cbData, BYTE *pbResult, UINT16 *cbResult)
{
	BOOL status = FALSE;
	BYTE buffer[PN532_MAX_LEN];
	UINT16 cbIn = cbData + 2, cbOut = *cbResult + 2;

	if(comm->communicator)
	{
	if((cbIn <= sizeof(buffer)) && (cbOut <= sizeof(buffer)))
	{
		if(!(pn532_cmd & 1))
		{
			buffer[0] = PN532_Host_PN532;
			buffer[1] = pn532_cmd;
			if(cbData)
				FUNC1(buffer + 2, pbData, cbData);
			if(comm->descr)
			{
				FUNC2(L"PN532> ");
				FUNC3(buffer, cbIn, 1);
				FUNC2(L"\n");
			}
			if(comm->communicator(buffer, cbIn, buffer, &cbOut, comm->suppdata))
			{
				if(comm->descr)
				{
					FUNC2(L"PN532< ");
					FUNC3(buffer, cbOut, 1);
					FUNC2(L"\n");
				}

				if(cbOut >= 2)
				{
					*cbResult = cbOut - 2;
					if(buffer[0] == PN532_PN532_Host)
					{
						if((status = (buffer[1] == pn532_cmd + 1)))
							FUNC1(pbResult, buffer + 2, *cbResult);
						else FUNC0(L"Recv CC is not valid: 0x%02x, expected 0x%02x\n", buffer[1], pn532_cmd + 1);
					}
					else FUNC0(L"Recv TFI is not valid: 0x%02x, expected 0x%02x\n", buffer[0], PN532_PN532_Host);
				}
				else FUNC0(L"cbOut = %hu (not long enough)\n", cbOut);
			}
		}
		else FUNC0(L"pn532_cmd is not even (0x%02x)\n", pn532_cmd);
	}
	else FUNC0(L"cbIn = %hu / cbOut = %hu (max is %hu)\n", cbIn, cbOut, sizeof(buffer));
	}
	else FUNC0(L"No communicator\n");
	return status;
}