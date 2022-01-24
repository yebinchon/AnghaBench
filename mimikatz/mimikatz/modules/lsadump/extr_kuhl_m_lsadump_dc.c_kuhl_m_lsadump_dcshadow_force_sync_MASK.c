#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dwPushFlags; int /*<<< orphan*/  szSchemaNamingContext; int /*<<< orphan*/  szConfigurationNamingContext; int /*<<< orphan*/  szDomainNamingContext; } ;
typedef  TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  DRS_HANDLE ;

/* Variables and functions */
 int DOMAIN_INFO_PUSH_FLAGS_CONFIG ; 
 int DOMAIN_INFO_PUSH_FLAGS_ROOT ; 
 int DOMAIN_INFO_PUSH_FLAGS_SCHEMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC2(PDCSHADOW_DOMAIN_INFO info, DRS_HANDLE hDrs)
{
	NTSTATUS status = STATUS_UNSUCCESSFUL;
	
	if(info->dwPushFlags & DOMAIN_INFO_PUSH_FLAGS_ROOT)
	{
		status = FUNC1(info, hDrs, info->szDomainNamingContext);
		if(!FUNC0(status))
			return status;
	}
	if(info->dwPushFlags & DOMAIN_INFO_PUSH_FLAGS_CONFIG)
	{
		status = FUNC1(info, hDrs, info->szConfigurationNamingContext);
		if(!FUNC0(status))
			return status;
	}
	if(info->dwPushFlags & DOMAIN_INFO_PUSH_FLAGS_SCHEMA)
	{
		status = FUNC1(info, hDrs, info->szSchemaNamingContext);
		if(!FUNC0(status))
			return status;
	}
	return status;
}