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
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  KULL_M_DPAPI_GUID_PROVIDER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int,int /*<<< orphan*/ *,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 

void FUNC8(DWORD level, IXMLDOMNode *pNode, int argc, wchar_t * argv[])
{
	IXMLDOMNode *pLogonCredentialsNode;
	wchar_t *userName, *domain, *password;
	LPBYTE data;
	LPVOID pDataOut;
	DWORD szData, dwDataOutLen;

	if((FUNC0(pNode, L"logonCredentials", &pLogonCredentialsNode) == S_OK) && pLogonCredentialsNode)
	{
		if((userName = FUNC7(pLogonCredentialsNode, L"userName")))
		{
			if((domain = FUNC7(pLogonCredentialsNode, L"domain")))
			{
				if((password = FUNC7(pLogonCredentialsNode, L"password")))
				{
					FUNC4(L"%*s" L"* %s \\ %s : %s\n", level << 1, L"", *domain, userName, password);
					if(FUNC6(password, &data, &szData))
					{
						if(szData >= (sizeof(DWORD) + sizeof(GUID)))
						{
							if(FUNC3((PBYTE) data + sizeof(DWORD), &KULL_M_DPAPI_GUID_PROVIDER))
							{
								if(FUNC5(data, szData, NULL, argc, argv, NULL, 0, &pDataOut, &dwDataOutLen, NULL))
								{
									FUNC4(L"%*s" L">> cleartext password: %.*s\n", level << 1, L"", dwDataOutLen / sizeof(wchar_t), pDataOut);
									FUNC1(pDataOut);
								}
							}
							else FUNC2(L"Maybe certificate encryption (todo)\n");
						}
						else FUNC2(L"szData: %u\n", szData);
						FUNC1(data);
					}
					FUNC1(password);
				}
				FUNC1(domain);
			}
			FUNC1(userName);
		}
	}
}