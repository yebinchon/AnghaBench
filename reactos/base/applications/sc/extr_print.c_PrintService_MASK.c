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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  dwServiceFlags; int /*<<< orphan*/  dwProcessId; } ;
typedef  TYPE_1__* LPSERVICE_STATUS_PROCESS ;
typedef  int /*<<< orphan*/  LPSERVICE_STATUS ;
typedef  scalar_t__ LPCTSTR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 

VOID
FUNC3(LPCTSTR lpServiceName,
             LPCTSTR lpDisplayName,
             LPSERVICE_STATUS_PROCESS pStatus,
             BOOL bExtended)
{
    FUNC2(FUNC1("SERVICE_NAME: %s\n"), lpServiceName);

    if (lpDisplayName)
        FUNC2(FUNC1("DISPLAY_NAME: %s\n"), lpDisplayName);

    // Re-use PrintServiceStatus(), as SERVICE_STATUS_PROCESS is in fact an extension of SERVICE_STATUS.
    FUNC0((LPSERVICE_STATUS)pStatus);

    if (bExtended)
    {
        FUNC2(FUNC1("\tPID                : %lu\n"),
            pStatus->dwProcessId);
        FUNC2(FUNC1("\tFLAGS              : %lu\n"),
            pStatus->dwServiceFlags);
    }

    FUNC2(FUNC1("\n"));
}