#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ NextEntryOffset; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_1__* PSYSTEM_PROCESS_INFORMATION ;
typedef  scalar_t__ (* PKULL_M_PROCESS_ENUM_CALLBACK ) (TYPE_1__*,int /*<<< orphan*/ ) ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SystemProcessInformation ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC3(PKULL_M_PROCESS_ENUM_CALLBACK callBack, PVOID pvArg)
{
	NTSTATUS status;
	PSYSTEM_PROCESS_INFORMATION buffer = NULL, myInfos;

	status = FUNC2(SystemProcessInformation, &buffer, 0);
	
	if(FUNC1(status))
	{
		for(myInfos = buffer; callBack(myInfos, pvArg) && myInfos->NextEntryOffset ; myInfos = (PSYSTEM_PROCESS_INFORMATION) ((PBYTE) myInfos + myInfos->NextEntryOffset));
		FUNC0(buffer);
	}
	return status;
}