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
typedef  int /*<<< orphan*/  IXMLDOMNodeList ;
typedef  int /*<<< orphan*/  IXMLDOMNode ;
typedef  int /*<<< orphan*/  IXMLDOMDocument ;
typedef  int /*<<< orphan*/  DOMNodeType ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NODE_ELEMENT ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

void FUNC9(int argc, wchar_t * argv[], IXMLDOMDocument *pXMLDom, IXMLDOMNode *pNode)
{
	PWSTR gen;
	IXMLDOMNodeList *pAppNodes, *pVdirNodes;
	IXMLDOMNode *pAppNode, *pVdirNode;
	DOMNodeType type;
	long lengthApp, lengthVdir, i, j;

	if((gen = FUNC8(pNode, L"name")))
	{
		FUNC6(L"\n* Site: \'%s\'\n", gen);
		FUNC5(gen);
		if((FUNC4(pNode, L"application", &pAppNodes) == S_OK) && pAppNodes)
		{
			if(FUNC1(pAppNodes, &lengthApp) == S_OK)
			{
				for(i = 0; i < lengthApp; i++)
				{
					if((FUNC0(pAppNodes, i, &pAppNode) == S_OK) && pAppNode)
					{
						if((FUNC3(pAppNode, &type) == S_OK) && (type == NODE_ELEMENT))
						{
							if((gen = FUNC8(pAppNode, L"path")))
							{
								FUNC6(L"  > Application Path: %s\n", gen);
								FUNC5(gen);
								
								if((FUNC4(pAppNode, L"virtualDirectory", &pVdirNodes) == S_OK) && pVdirNodes)
								{
									if(FUNC1(pVdirNodes, &lengthVdir) == S_OK)
									{
										for(j = 0; j < lengthVdir; j++)
										{
											if((FUNC0(pVdirNodes, j, &pVdirNode) == S_OK) && pVdirNode)
											{
												if((FUNC3(pVdirNode, &type) == S_OK) && (type == NODE_ELEMENT))
												{
													if((gen = FUNC8(pVdirNode, L"path")))
													{
														FUNC6(L"    - VirtualDirectory Path: %s ( ", gen);
														FUNC5(gen);

														if((gen = FUNC8(pVdirNode, L"physicalPath")))
														{
															FUNC6(L"%s", gen);
															FUNC5(gen);
														}
														FUNC6(L" )\n");

														if((gen = FUNC8(pVdirNode, L"userName")))
														{
															FUNC6(L"      Username: %s\n", gen);
															FUNC5(gen);
															if((gen = FUNC8(pVdirNode, L"password")))
															{
																FUNC6(L"      Password: %s\n", gen);
																FUNC7(argc, argv, pXMLDom, gen);
																FUNC5(gen);
															}
														}
													}
												}
												FUNC2(pVdirNode);
											}
										}
									}
								}
							}
						}
						FUNC2(pAppNode);
					}
				}
			}
		}
	}
}