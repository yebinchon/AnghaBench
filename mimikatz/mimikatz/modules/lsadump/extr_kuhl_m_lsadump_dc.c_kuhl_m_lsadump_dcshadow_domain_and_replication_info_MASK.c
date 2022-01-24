#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  InvocationId; int /*<<< orphan*/  InstanceId; } ;
struct TYPE_10__ {int /*<<< orphan*/ * request; int /*<<< orphan*/  szFakeFQDN; TYPE_3__ mimiDc; TYPE_3__ realDc; int /*<<< orphan*/  szDCFQDN; int /*<<< orphan*/  fUseSchemaSignature; } ;
typedef  TYPE_1__* PDCSHADOW_DOMAIN_INFO ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  DCSHADOW_DOMAIN_DC_INFO ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

BOOL FUNC8(PDCSHADOW_DOMAIN_INFO info)
{
	BOOL fSuccess = FALSE;
	DWORD dwErr = 0;

	FUNC1(L"** Domain Info **\n\n");
	fSuccess = FUNC4(info)
		&& (!info->fUseSchemaSignature || FUNC5(info));
	if(fSuccess)
	{
		fSuccess = FUNC3(info);
	}
	FUNC1(L"\n");
	if(fSuccess)
	{
		FUNC1(L"** Server Info **\n\n");
		if((fSuccess = FUNC6(info, info->szDCFQDN, &info->realDc)))
		{
			FUNC1(L"Server: %s\n  InstanceId  : ", info->szDCFQDN);
			FUNC7(&info->realDc.InstanceId);
			FUNC1(L"\n  InvocationId: ");
			FUNC7(&info->realDc.InvocationId);
			FUNC1(L"\n");
		}
		FUNC0(&info->mimiDc, sizeof(DCSHADOW_DOMAIN_DC_INFO));
		if(FUNC6(info, info->szFakeFQDN, &info->mimiDc))
		{
			FUNC1(L"Fake Server (already registered): %s\n  InstanceId  : ", info->szFakeFQDN);
			FUNC7(&info->mimiDc.InstanceId);
			FUNC1(L"\n  InvocationId: ");
			FUNC7(&info->mimiDc.InvocationId);
			FUNC1(L"\n");
		}
		else FUNC1(L"Fake Server (not already registered): %s\n", info->szFakeFQDN);
		FUNC1(L"\n");
	}
	if(fSuccess && info->request != NULL)
		fSuccess = FUNC2(info);
	return fSuccess;
}