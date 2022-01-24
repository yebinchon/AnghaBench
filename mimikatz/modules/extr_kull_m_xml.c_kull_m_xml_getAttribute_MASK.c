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
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMNamedNodeMap ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

wchar_t * FUNC10(IXMLDOMNode *pNode, PCWSTR name)
{
	wchar_t *result = NULL;
	IXMLDOMNamedNodeMap *map;
	IXMLDOMNode *nAttr;
	BSTR bstrGeneric;
	long length, i;
	BOOL isMatch = FALSE;

	if(FUNC4(pNode, &map) == S_OK)
	{
		if(FUNC2(map, &length) == S_OK)
		{
			for(i = 0; (i < length) && !isMatch; i++)
			{
				if(FUNC1(map, i, &nAttr) == S_OK)
				{
					if(FUNC5(nAttr, &bstrGeneric) == S_OK)
					{
						isMatch = (FUNC8(name, bstrGeneric) == 0);
						FUNC7(bstrGeneric);
						if(isMatch)
						{
							if(FUNC6(nAttr, &bstrGeneric) == S_OK)
							{
								FUNC9(&result, bstrGeneric);
								FUNC7(bstrGeneric);
							}
						}
					}
					FUNC3(nAttr);
				}
			}
		}
		FUNC0(map);
	}
	return result;
}