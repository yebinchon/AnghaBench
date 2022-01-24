#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_12__ {scalar_t__ isPresent; } ;
struct TYPE_13__ {TYPE_6__ Module; } ;
struct TYPE_11__ {int /*<<< orphan*/ * hLsassMem; } ;
struct TYPE_10__ {int /*<<< orphan*/  krbtgt_previous; int /*<<< orphan*/  krbtgt_current; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_9__ {scalar_t__ address; int /*<<< orphan*/ * member_1; TYPE_2__* member_0; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__ PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int LONG ;
typedef  TYPE_1__ KULL_M_MEMORY_ADDRESS ;
typedef  TYPE_2__ DUAL_KRBTGT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KULL_M_MEMORY_GLOBAL_OWN_HANDLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  SecDataReferences ; 
 TYPE_5__ cLsass ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_7__ kuhl_m_sekurlsa_kdcsvc_package ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (TYPE_5__*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,TYPE_1__*,int) ; 

NTSTATUS FUNC7(int argc, wchar_t * argv[])
{
	NTSTATUS status = FUNC3();
	LONG l = 0;
	DUAL_KRBTGT dualKrbtgt = {NULL, NULL};
	KULL_M_MEMORY_ADDRESS aLsass = {NULL, cLsass.hLsassMem}, aLocal = {&dualKrbtgt, &KULL_M_MEMORY_GLOBAL_OWN_HANDLE};

	if(FUNC1(status))
	{
		if(kuhl_m_sekurlsa_kdcsvc_package.Module.isPresent)
		{
			if(FUNC5(&cLsass, &kuhl_m_sekurlsa_kdcsvc_package.Module, SecDataReferences, FUNC0(SecDataReferences), &aLsass.address, NULL, NULL, &l))
			{
				aLsass.address = (PBYTE) aLsass.address + sizeof(PVOID) * l;
				if(FUNC6(&aLocal, &aLsass, sizeof(DUAL_KRBTGT)))
				{
					FUNC4(dualKrbtgt.krbtgt_current, L"Current");
					FUNC4(dualKrbtgt.krbtgt_previous, L"Previous");
				}
			}
			else FUNC2(L"Unable to find KDC pattern in LSASS memory\n");
		}
		else FUNC2(L"KDC service not in LSASS memory\n");
	}
	return status;
}