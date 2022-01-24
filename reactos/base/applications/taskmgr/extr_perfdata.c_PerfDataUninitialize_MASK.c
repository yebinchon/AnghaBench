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
struct TYPE_4__ {struct TYPE_4__* Flink; } ;
typedef  int /*<<< orphan*/ * PSIDTOUSERNAME ;
typedef  TYPE_1__* PLIST_ENTRY ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  List ; 
 int /*<<< orphan*/  PerfDataCriticalSection ; 
 int /*<<< orphan*/  SIDTOUSERNAME ; 
 TYPE_1__ SidToUserNameHead ; 
 int /*<<< orphan*/ * SystemProcessorTimeInfo ; 
 int /*<<< orphan*/ * SystemUserSid ; 
 int /*<<< orphan*/ * pPerfData ; 

void FUNC5(void)
{
    PLIST_ENTRY pCur;
    PSIDTOUSERNAME pEntry;

    if (pPerfData != NULL)
        FUNC4(FUNC3(), 0, pPerfData);

    FUNC1(&PerfDataCriticalSection);

    if (SystemUserSid != NULL)
    {
        FUNC2(SystemUserSid);
        SystemUserSid = NULL;
    }

    /* Free user names cache list */
    pCur = SidToUserNameHead.Flink;
    while (pCur != &SidToUserNameHead)
    {
        pEntry = FUNC0(pCur, SIDTOUSERNAME, List);
        pCur = pCur->Flink;
        FUNC4(FUNC3(), 0, pEntry);
    }

    if (SystemProcessorTimeInfo) {
        FUNC4(FUNC3(), 0, SystemProcessorTimeInfo);
    }
}