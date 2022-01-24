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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  DOMNodeType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NODE_ELEMENT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*) ; 

void FUNC11(DWORD level, IXMLDOMNode *pNode, int argc, wchar_t * argv[])
{
	IXMLDOMNodeList *pGroups;
	IXMLDOMNode *pGroup, *pProperties;
	DOMNodeType type;
	long lengthGroups, i;
	wchar_t *name;

	FUNC8(level, pNode, argc, argv);
	FUNC9(level, pNode, argc, argv);
	if((FUNC4(pNode, L"group", &pGroups) == S_OK) && pGroups)
	{
		if(FUNC1(pGroups, &lengthGroups) == S_OK)
		{
			for(i = 0; i < lengthGroups; i++)
			{
				if((FUNC0(pGroups, i, &pGroup) == S_OK) && pGroup)
				{
					if((FUNC3(pGroup, &type) == S_OK) && (type == NODE_ELEMENT))
					{
						if((FUNC5(pGroup, L"properties", &pProperties) == S_OK) && pProperties)
						{
							if((name = FUNC10(pProperties, L"name")))
							{
								FUNC7(L"%*s" L"<%s>\n", level << 1, L"", name);
								FUNC6(name);
							}
						}
						FUNC11(level + 1, pGroup, argc, argv);
					}
					FUNC2(pGroup);
				}
			}
		}
	}
}