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
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

void FUNC5(int argc, wchar_t * argv[], IXMLDOMDocument *pXMLDom, IXMLDOMNode *pNode)
{
	PWSTR gen;
	IXMLDOMNode *pProcessModelNode;
	if((gen = FUNC4(pNode, L"name")))
	{
		FUNC2(L"\n* ApplicationPool: \'%s\'\n", gen);
		FUNC1(gen);
		if((FUNC0(pNode, L"processModel", &pProcessModelNode) == S_OK) && pProcessModelNode)
		{
			if((gen = FUNC4(pProcessModelNode, L"userName")))
			{
				FUNC2(L"  Username: %s\n", gen);
				FUNC1(gen);
				if((gen = FUNC4(pProcessModelNode, L"password")))
				{
					FUNC2(L"  Password: %s\n", gen);
					FUNC3(argc, argv, pXMLDom, gen);
					FUNC1(gen);
				}
			}
		}
	}
}