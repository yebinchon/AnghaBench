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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 

void FUNC9(IXMLDOMNode *pObj, int argc, wchar_t * argv[])
{
	BOOL isSecureString = FALSE;
	BSTR bstrGeneric;
	LPBYTE data;
	LPVOID pDataOut;
	DWORD szData, dwDataOutLen;

	if(FUNC0(pObj, &bstrGeneric) == S_OK)
	{
		isSecureString = !FUNC4(bstrGeneric, L"SS");
		FUNC3(bstrGeneric);
		if(FUNC1(pObj, &bstrGeneric) == S_OK)
		{
			if(isSecureString)
			{
				if(FUNC8(bstrGeneric, &data, &szData))
				{
					FUNC7(0, data);
					if(FUNC6(data, szData, NULL, argc, argv, NULL, 0, &pDataOut, &dwDataOutLen, NULL))
					{
						FUNC5(L">> cleartext: %.*s\n", dwDataOutLen / sizeof(wchar_t), pDataOut);
						FUNC2(pDataOut);
					}
					FUNC2(data);
				}
			}
			else FUNC5(L"%s\n", bstrGeneric);
			FUNC3(bstrGeneric);
		}
	}
}