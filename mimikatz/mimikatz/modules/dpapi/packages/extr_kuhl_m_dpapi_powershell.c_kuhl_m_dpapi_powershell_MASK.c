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
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

NTSTATUS FUNC9(int argc, wchar_t * argv[])
{
	PCWSTR filename;
	IXMLDOMDocument *pXMLDom;
	IXMLDOMNode *pNode;

	if(FUNC5(argc, argv, L"in", &filename, NULL))
	{
		if((pXMLDom = FUNC6()))
		{
			if(FUNC7(pXMLDom, filename))
			{
				if((FUNC0(pXMLDom, (BSTR) L"//Objs/Obj", &pNode) == S_OK) && pNode)
				{
					if(FUNC2(pNode, L"System.Management.Automation.PSCredential") || FUNC2(pNode, L"System.Security.SecureString"))
						FUNC3(pNode, argc, argv);
					else FUNC1(L"XML doesn't seem to be a PSCredential/SecureString\n");
				}
				else if((FUNC0(pXMLDom, (BSTR) L"//Objs/SS", &pNode) == S_OK) && pNode)
					FUNC4(pNode, argc, argv);
				else FUNC1(L"XML doesn't seem to be a SecureString\n");
			}
			FUNC8(pXMLDom);
		}
	}
	else FUNC1(L"Missing /in:credentials.xml\n");
	return STATUS_SUCCESS;
}