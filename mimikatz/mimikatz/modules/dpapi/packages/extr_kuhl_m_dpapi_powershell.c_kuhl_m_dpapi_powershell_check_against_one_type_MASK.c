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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  DOMNodeType ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  NODE_ELEMENT ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC10(IXMLDOMNode *pObj, LPCWSTR TypeName)
{
	BOOL status = FALSE;
	IXMLDOMNode *pNode, *pT;
	IXMLDOMNodeList *pTs;
	DOMNodeType type;
	long lengthT, i;
	BSTR bstrGeneric;

	if((FUNC0(pObj, (BSTR) L"TN", &pNode) == S_OK) && pNode)
	{
		if((FUNC6(pNode, L"T", &pTs) == S_OK) && pTs)
		{
			if(FUNC2(pTs, &lengthT) == S_OK)
			{
				for(i = 0; (i < lengthT) && !status; i++)
				{
					if((FUNC1(pTs, i, &pT) == S_OK) && pT)
					{
						if((FUNC4(pT, &type) == S_OK) && (type == NODE_ELEMENT))
						{
							if(FUNC5(pT, &bstrGeneric) == S_OK)
							{
								status = !FUNC9(bstrGeneric, TypeName);
								FUNC8(bstrGeneric);
							}
						}
						FUNC3(pT);
					}
				}
			}
		}
		else FUNC7(L"No types\n");
	}
	else FUNC7(L"No TN\n");
	return status;
}