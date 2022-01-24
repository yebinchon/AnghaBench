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
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  LPCBYTE ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

BOOL FUNC7(int argc, wchar_t * argv[], IXMLDOMDocument *pXMLDom, IXMLDOMNode *pNode, LPCWSTR provider, LPCBYTE data, DWORD szData)
{
	BOOL status = FALSE, isMachine = FALSE;
	PWSTR name, type, keyContainerName, useMachineContainer, sessionKey;
	PBYTE binaryData;
	DWORD binaryDataLen;

	if((name = FUNC6(pNode, L"name")))
	{
		if((status = FUNC2(name, provider) == 0))
		{
			if((type = FUNC6(pNode, L"type")))
			{
				if(FUNC2(type, L"Microsoft.ApplicationHost.AesProtectedConfigurationProvider") == 0)
				{
					if((keyContainerName = FUNC6(pNode, L"keyContainerName")))
					{
						FUNC3(L"  | KeyName   : %s\n", keyContainerName);
						if((sessionKey = FUNC6(pNode, L"sessionKey")))
						{
							//kprintf(L"SessionKey: %s\n", sessionKey);
							if((useMachineContainer = FUNC6(pNode, L"useMachineContainer")))
							{
								isMachine = (FUNC2(useMachineContainer, L"true") == 0);
								FUNC0(useMachineContainer);
							}		
							if(FUNC5(sessionKey, &binaryData, &binaryDataLen))
							{
								FUNC4(argc, argv, keyContainerName, isMachine, binaryData, binaryDataLen, data, szData);
								FUNC0(binaryData);
							}
							FUNC0(sessionKey);
						}
						FUNC0(keyContainerName);
					}
				}
				else /*if ... */
				{
					FUNC1(L"type is not supported (%s)\n", type);
				}
				FUNC0(type);
			}
			else
			{
				// TODO direct decryption without session key
			}
		}
		FUNC0(name);
	}
	return status;
}