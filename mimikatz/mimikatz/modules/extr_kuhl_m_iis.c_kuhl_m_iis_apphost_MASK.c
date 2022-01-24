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
typedef  int /*<<< orphan*/  IXMLDOMDocument ;

/* Variables and functions */
 int /*<<< orphan*/  IISXMLType_ApplicationPools ; 
 int /*<<< orphan*/  IISXMLType_Sites ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

NTSTATUS FUNC6(int argc, wchar_t * argv[])
{
	PCWSTR filename;
	IXMLDOMDocument *pXMLDom;

	if(FUNC2(argc, argv, L"in", &filename, NULL))
	{
		if((pXMLDom = FUNC3()))
		{
			if(FUNC4(pXMLDom, filename))
			{
				FUNC1(argc, argv, pXMLDom, L"//configuration/system.applicationHost/applicationPools/add", IISXMLType_ApplicationPools, NULL, NULL, 0);
				FUNC1(argc, argv, pXMLDom, L"//configuration/system.applicationHost/sites/site", IISXMLType_Sites, NULL, NULL, 0);
			}
			FUNC5(pXMLDom);
		}
	}
	else FUNC0(L"Missing /in:filename (applicationHost.config)\n");
	return STATUS_SUCCESS;
}