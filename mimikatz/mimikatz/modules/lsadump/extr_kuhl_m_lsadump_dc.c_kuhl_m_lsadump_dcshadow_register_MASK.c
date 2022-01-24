#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  isInstanceId; } ;
struct TYPE_7__ {TYPE_6__ mimiDc; int /*<<< orphan*/  szFakeFQDN; } ;
typedef  TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

NTSTATUS FUNC6(PDCSHADOW_DOMAIN_INFO info)
{
	NTSTATUS status = STATUS_UNSUCCESSFUL;
	
	if(!info->mimiDc.isInstanceId)
	{
		if(FUNC5(info))
		{
			if(FUNC0(FUNC4(info)))
			{
				if(FUNC3(info, info->szFakeFQDN, &info->mimiDc))
					status = STATUS_SUCCESS;
				else FUNC1(L"Unable to get invocation Id\n");
			}
			else FUNC1(L"Unable to add object via Drs\n");
		}
	}
	else
	{
		FUNC2(L"Already registered\n");
		status = STATUS_SUCCESS;
	}
	return status;
}