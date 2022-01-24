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
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

NTSTATUS FUNC8(int argc, wchar_t * argv[])
{
	PCWSTR filename;
	IXMLDOMDocument *pXMLDom;
	IXMLDOMNode *pNode;

	if(FUNC4(argc, argv, L"in", &filename, NULL))
	{
		if((pXMLDom = FUNC5()))
		{
			if(FUNC6(pXMLDom, filename))
			{
				if((FUNC0(pXMLDom, (BSTR) L"//RDCMan/file", &pNode) == S_OK) && pNode)
				{
					FUNC2(L"<ROOT>\n");
					FUNC3(1, pNode, argc, argv);
				}
			}
			FUNC7(pXMLDom);
		}
	}
	else FUNC1(L"Missing /in:filename.rdg\n");
	return STATUS_SUCCESS;
}