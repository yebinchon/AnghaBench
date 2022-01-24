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
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPCBYTE ;
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int IISXMLType ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  DOMNodeType ;
typedef  int /*<<< orphan*/  BSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  IISXMLType_ApplicationPools 130 
#define  IISXMLType_Providers 129 
#define  IISXMLType_Sites 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NODE_ELEMENT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC8(int argc, wchar_t * argv[], IXMLDOMDocument *pXMLDom, PCWSTR path, IISXMLType xmltype, LPCWSTR provider, LPCBYTE data, DWORD szData)
{
	IXMLDOMNodeList *pNodes;
	IXMLDOMNode *pNode;
	DOMNodeType type;
	BOOL mustBreak = FALSE;
	long length, i;

	if((FUNC0(pXMLDom, (BSTR) path, &pNodes) == S_OK) && pNodes)
	{
		if(FUNC2(pNodes, &length) == S_OK)
		{
			for(i = 0; (i < length) && !mustBreak; i++)
			{
				if((FUNC1(pNodes, i, &pNode) == S_OK) && pNode)
				{
					if((FUNC4(pNode, &type) == S_OK) && (type == NODE_ELEMENT))
					{
						switch(xmltype)
						{
						case IISXMLType_ApplicationPools:
							FUNC5(argc, argv, pXMLDom, pNode);
							break;
						case IISXMLType_Sites:
							FUNC7(argc, argv, pXMLDom, pNode);
							break;
						case IISXMLType_Providers:
							mustBreak = FUNC6(argc, argv, pXMLDom, pNode, provider, data, szData);
							break;
						}
					}
					FUNC3(pNode);
				}
			}
		}
	}
}