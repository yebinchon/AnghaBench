#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {int sv102_type; int /*<<< orphan*/  sv102_comment; int /*<<< orphan*/  sv102_version_minor; int /*<<< orphan*/  sv102_version_major; int /*<<< orphan*/  sv102_name; int /*<<< orphan*/  sv102_platform_id; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ NET_API_STATUS ;
typedef  TYPE_1__* LPSERVER_INFO_102 ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NERR_Success ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/ * SV_TYPES ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

NTSTATUS FUNC5(int argc, wchar_t * argv[])
{
	LPSERVER_INFO_102 pServerInfo;
	NET_API_STATUS nStatus;
	DWORD i;
	nStatus = FUNC2(argc ? argv[0] : NULL, 102, (LPBYTE*) &pServerInfo);
	if(nStatus == NERR_Success)
	{
		FUNC4(L"platform_id: %u\n"
				L"name       : %s\n"
				L"version    : %u.%u\n"
				L"comment    : %s\n"
				L"type       : %08x - ",
		pServerInfo->sv102_platform_id, pServerInfo->sv102_name, pServerInfo->sv102_version_major, pServerInfo->sv102_version_minor, pServerInfo->sv102_comment, pServerInfo->sv102_type);
		
		for(i = 0; i < FUNC0(SV_TYPES); i++)
			if((1 << i) & pServerInfo->sv102_type)
				FUNC4(L"%s ; ", SV_TYPES[i]);
		FUNC4(L"\n");
		FUNC1(pServerInfo);
	}
	else FUNC3(L"NetServerGetInfo: %08x\n", nStatus);
	return STATUS_SUCCESS;
}