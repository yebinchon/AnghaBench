#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {TYPE_1__* request; } ;
struct TYPE_5__ {scalar_t__ cNumObjects; scalar_t__ pObjects; } ;
typedef  TYPE_2__* PDCSHADOW_DOMAIN_INFO ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  DRS_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__) ; 

ULONG FUNC3(PDCSHADOW_DOMAIN_INFO info, DRS_HANDLE hDrs)
{
	NTSTATUS status = STATUS_UNSUCCESSFUL;
	DWORD i;
	for(i = 0; i < info->request->cNumObjects; i++)
	{
		if(!FUNC0(status = FUNC2(info, hDrs, info->request->pObjects + i)))
		{
			FUNC1(L"DRSAddEntry object %u: 0x%08x\n", i, status);
			break;
		}
	}
	return status;
}