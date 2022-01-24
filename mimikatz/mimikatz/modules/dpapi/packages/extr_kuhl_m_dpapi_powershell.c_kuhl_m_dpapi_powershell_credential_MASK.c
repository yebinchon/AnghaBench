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
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  DOMNodeType ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NODE_ELEMENT ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*) ; 

void FUNC12(IXMLDOMNode *pObj, int argc, wchar_t * argv[])
{
	IXMLDOMNode *pNode, *pChild;
	IXMLDOMNodeList *pChilds;
	long listLength, i;
	DOMNodeType type;
	wchar_t *name;

	if((FUNC0(pObj, (BSTR) L"Props", &pNode) == S_OK) && pNode)
	{
		if(FUNC5(pNode, &pChilds) == S_OK)
		{
			if(FUNC3(pChilds, &listLength) == S_OK)
			{
				for(i = 0; i < listLength; i++)
				{
					if((FUNC2(pChilds, i, &pChild) == S_OK) && pChild)
					{
						if((FUNC6(pChild, &type) == S_OK) && (type == NODE_ELEMENT))
						{
							if((name = FUNC11(pChild, L"N")))
							{
								FUNC9(L"%s: ", name);
								FUNC7(name);
								FUNC10(pChild, argc, argv);
							}
							else FUNC8(L"No NAME\n");
						}
						else FUNC8(L"Not ELEMENT\n");
						FUNC4(pChild);
					}
				}
			}
			FUNC1(pChilds);
		}
	}
	else FUNC8(L"No Props\n");
}