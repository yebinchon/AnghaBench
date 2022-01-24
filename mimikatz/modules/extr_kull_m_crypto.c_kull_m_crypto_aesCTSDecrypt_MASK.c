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
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KP_IV ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__) ; 

BOOL FUNC6(HCRYPTKEY hKey, PBYTE data, DWORD szData, PBYTE pbIV)
{
	BOOL status = FALSE;
	DWORD nbBlock, lastLen, i;
	BYTE buffer[32], *ptr;
	HCRYPTKEY hKeyNoIV;

	if(szData > 16)
	{
		if(FUNC1(hKey, NULL, 0, &hKeyNoIV))
		{
			if(FUNC2(hKey, KP_IV, pbIV, 0))
			{
				nbBlock = (szData + 15) >> 4;
				lastLen = (szData & 0xf) ? (szData & 0xf) : 16;
				if (nbBlock <= 2 || FUNC5(hKey, data, nbBlock - 2, FALSE))
				{
					ptr = &data[16 * (nbBlock - 2)];
					FUNC3(buffer, ptr, lastLen + 16);
					FUNC4(&buffer[lastLen + 16], 16 - lastLen);
					if(FUNC5(hKeyNoIV, buffer, 1, FALSE))
					{
						for(i = 0; i < 16; i++)
							buffer[i] ^= buffer[i + 16];
						FUNC3(&buffer[lastLen + 16], &buffer[lastLen], 16 - lastLen);
						if((status = FUNC5(hKey, buffer + 16, 1, FALSE)))
						{
							FUNC3(ptr, buffer + 16, 16);
							FUNC3(&data[16 * nbBlock - 16], buffer, lastLen);
						}
					}
				}
			}
			FUNC0(hKeyNoIV);
		}
	}
	else if(szData == 16)
		status = FUNC5(hKey, data, 1, FALSE);

	return status;
}