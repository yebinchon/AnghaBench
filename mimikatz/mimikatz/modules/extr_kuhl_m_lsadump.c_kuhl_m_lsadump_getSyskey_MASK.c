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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  PKULL_M_REGISTRY_HANDLE ;
typedef  scalar_t__* LPBYTE ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  size_t DWORD ;
typedef  scalar_t__ BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int SYSKEY_LENGTH ; 
 int TRUE ; 
 int /*<<< orphan*/ * kuhl_m_lsadump_SYSKEY_NAMES ; 
 size_t* kuhl_m_lsadump_SYSKEY_PERMUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,size_t*) ; 

BOOL FUNC6(PKULL_M_REGISTRY_HANDLE hRegistry, HKEY hLSA, LPBYTE sysKey)
{
	BOOL status = TRUE;
	DWORD i;
	HKEY hKey;
	wchar_t buffer[8 + 1];
	DWORD szBuffer;
	BYTE buffKey[SYSKEY_LENGTH];

	for(i = 0 ; (i < FUNC0(kuhl_m_lsadump_SYSKEY_NAMES)) && status; i++)
	{
		status = FALSE;
		if(FUNC3(hRegistry, hLSA, kuhl_m_lsadump_SYSKEY_NAMES[i], 0, KEY_READ, &hKey))
		{
			szBuffer = 8 + 1;
			if(FUNC4(hRegistry, hKey, buffer, &szBuffer, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL))
				status = FUNC5(buffer, L"%x", (DWORD *) &buffKey[i*sizeof(DWORD)]) != -1;
			FUNC2(hRegistry, hKey);
		}
		else FUNC1(L"LSA Key Class read error\n");
	}
	
	if(status)
		for(i = 0; i < SYSKEY_LENGTH; i++)
			sysKey[i] = buffKey[kuhl_m_lsadump_SYSKEY_PERMUT[i]];	

	return status;
}