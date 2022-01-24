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
typedef  int /*<<< orphan*/  outBuffer ;
typedef  int /*<<< orphan*/  inBuffer ;
typedef  int* PBYTE ;
typedef  int* LPCVOID ;
typedef  int* LPBYTE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int PURGE_RXCLEAR ; 
 int PURGE_TXCLEAR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int) ; 
 int /*<<< orphan*/  SR98_SLEEP_BEFORE_RECV ; 
 int /*<<< orphan*/  SR98_SLEEP_BEFORE_SEND ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int*,int,int*,int /*<<< orphan*/ *) ; 

BOOL FUNC9(HANDLE hFile, BYTE ctl, LPCVOID in, BYTE szIn, LPBYTE *out, BYTE *szOut)
{
	BOOL status = FALSE;
	BYTE i, crc, inBuffer[24] = {0x03, 0x01, 5 + szIn}, outBuffer[256] = {0}, szBuffer;
	DWORD ret;

	//kprintf(L">  ");
	//kull_m_string_wprintf_hex(in, szIn, 1);
	//kprintf(L"\n");
	if(szIn < (24 - 6))
	{
		inBuffer[3] = ctl;
		FUNC6(inBuffer + 4, in, szIn);
		for(i = 0, crc = 0; i < (3 + szIn); i++)
			crc ^= inBuffer[i + 1];
		
		inBuffer[4 + szIn] = crc;
		inBuffer[5 + szIn] = 0x04;
		
		//kprintf(L">> ");
		//kull_m_string_wprintf_hex(inBuffer, sizeof(inBuffer), 1);
		//kprintf(L"\n");
		FUNC4(hFile, PURGE_TXCLEAR | PURGE_RXCLEAR);
		FUNC7(SR98_SLEEP_BEFORE_SEND);
		if(FUNC8(hFile, inBuffer, sizeof(inBuffer), &ret, NULL) && (ret == sizeof(inBuffer)))
		{
			FUNC0(hFile, NULL, NULL);
			FUNC7(SR98_SLEEP_BEFORE_RECV);
			if(FUNC5(hFile, outBuffer, sizeof(outBuffer), &ret, NULL))
			{
				//kprintf(L"<< ");
				//kull_m_string_wprintf_hex(outBuffer, ret, 1 | (16 << 16));
				//kprintf(L"\n");
				if(ret >= 6)
				{
					if((outBuffer[0] == 0x05) && (outBuffer[1] == 0x01))
					{
						if((outBuffer[2] >= 5) && (outBuffer[3] == (ctl | 0x80)))
						{
							szBuffer = outBuffer[2] - 5;

							for(i = 0, crc = 0; i < (3 + szBuffer); i++)
								crc ^= outBuffer[i + 1];
							if((outBuffer[4 + szBuffer] == crc) && (outBuffer[5 + szBuffer] == 0x04))
							{
								status = TRUE;
								if(szBuffer && out && szOut)
								{
									*szOut = szBuffer;
									if((*out = (PBYTE) FUNC1(LPTR, szBuffer)))
										FUNC6(*out, outBuffer + 4, szBuffer);
									else status = FALSE;
								}
								//kprintf(L"<  ");
								//kull_m_string_wprintf_hex(outBuffer + 4, szBuffer, 1);
								//kprintf(L"\n");
							}
							else FUNC2(L"Bad CRC/data\n");
						}
						else FUNC2(L"Bad data size/ctl code\n");
					}
					else FUNC2(L"Bad header\n");
				}
				else FUNC2(L"Read size = %u\n", ret);
			}
			else FUNC3(L"ReadFile");
		}
		else FUNC3(L"WriteFile");
	}
	return status;
}