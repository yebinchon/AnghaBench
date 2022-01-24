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
typedef  size_t PWCHAR ;
typedef  size_t PCWSTR ;
typedef  size_t PCWCHAR ;
typedef  size_t PBYTE ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IISXMLType_Providers ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t,size_t) ; 
 scalar_t__ FUNC3 (size_t,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (size_t,size_t*,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (size_t,int) ; 
 size_t FUNC8 (size_t) ; 

void FUNC9(int argc, wchar_t * argv[], IXMLDOMDocument *pXMLDom, PCWSTR password)
{
	BOOL status = FALSE;
	size_t passwordLen = FUNC8(password), providerLen, dataLen;
	PCWCHAR pBeginProvider, pEndProvider, pBeginData, pEndData;
	PWCHAR provider, data;
	PBYTE binaryData;
	DWORD binaryDataLen;

	if(passwordLen > 10) // [enc:*:enc], and yes, I don't check all
	{
		if((FUNC3(password, L"[enc:", 5) == 0) && (FUNC3(password + (passwordLen - 5), L":enc]", 5) == 0))
		{
			pBeginProvider = password + 5;
			pEndProvider = FUNC7(password + 5, L':');
			providerLen = (PBYTE) pEndProvider - (PBYTE) pBeginProvider;
			if(pEndProvider != (password + (passwordLen - 5)))
			{
				pBeginData = pEndProvider + 1;
				pEndData = password + (passwordLen - 5);
				dataLen = (PBYTE) pEndData - (PBYTE) pBeginData;
				if((provider = (PWCHAR) FUNC0(LPTR, providerLen + sizeof(wchar_t))))
				{
					FUNC2(provider, pBeginProvider, providerLen);
					if((data = (PWCHAR) FUNC0(LPTR, dataLen + sizeof(wchar_t))))
					{
						FUNC2(data, pBeginData, dataLen);
						FUNC4(L"  | Provider  : %s\n  | Data      : %s\n", provider, data);

						if(FUNC6(data, &binaryData, &binaryDataLen))
						{
							//kprintf(L"Binary    : ");
							//kull_m_string_wprintf_hex(binaryData, binaryDataLen, 0);
							//kprintf(L"\n");
							FUNC5(argc, argv, pXMLDom, L"//configuration/configProtectedData/providers/add", IISXMLType_Providers, provider, binaryData, binaryDataLen);
							FUNC1(binaryData);
						}
						FUNC1(data);
					}
					FUNC1(provider);
				}
			}
		}
	}
}