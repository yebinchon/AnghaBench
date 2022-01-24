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
typedef  scalar_t__ PCWSTR ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

wchar_t * FUNC5(IXMLDOMNode *pNode, PCWSTR name)
{
	wchar_t *result = NULL;
	IXMLDOMNode *pSingleNode, *pChild;
	BSTR bstrGeneric;

	if((FUNC2(pNode, (BSTR) name, &pSingleNode) == S_OK) && pSingleNode)
	{
		if((FUNC0(pSingleNode, &pChild) == S_OK) && pChild)
		{
			if(FUNC1(pChild, &bstrGeneric) == S_OK)
			{
				FUNC4(&result, bstrGeneric);
				FUNC3(bstrGeneric);
			}
		}
	}
	return result;
}