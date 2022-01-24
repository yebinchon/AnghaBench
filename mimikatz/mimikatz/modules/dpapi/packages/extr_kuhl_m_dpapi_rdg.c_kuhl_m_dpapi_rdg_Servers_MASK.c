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
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 

void FUNC10(DWORD level, IXMLDOMNode *pNode, int argc, wchar_t * argv[])
{
	IXMLDOMNodeList *pServers;
	IXMLDOMNode *pServer, *pProperties;
	DOMNodeType type;
	long lengthServers, i;
	wchar_t *name;

	if((FUNC4(pNode, L"server", &pServers) == S_OK) && pServers)
	{
		if(FUNC1(pServers, &lengthServers) == S_OK)
		{
			for(i = 0; i < lengthServers; i++)
			{
				if((FUNC0(pServers, i, &pServer) == S_OK) && pServer)
				{
					if((FUNC3(pServer, &type) == S_OK) && (type == NODE_ELEMENT))
					{
						if((FUNC5(pServer, L"properties", &pProperties) == S_OK) && pProperties)
						{
							if((name = FUNC9(pProperties, L"name")))
							{
								FUNC7(L"%*s" L"| %s\n", level << 1, L"", name);
								FUNC6(name);
							}
						}
						FUNC8(level + 1, pServer, argc, argv);
					}
					FUNC2(pServer);
				}
			}
		}
	}
}