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
struct TYPE_4__ {scalar_t__ dwCurrentState; scalar_t__ dwCheckPoint; scalar_t__ dwControlsAccepted; } ;
typedef  int /*<<< orphan*/  SERVICE_STATUS_HANDLE ;
typedef  TYPE_1__ SERVICE_STATUS ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_FLAGS_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SERVICE_ACCEPT_STOP ; 
 scalar_t__ SERVICE_RUNNING ; 
 scalar_t__ SERVICE_START_PENDING ; 
 scalar_t__ SERVICE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 

BOOL
FUNC3(SERVICE_STATUS_HANDLE service, SERVICE_STATUS *status)
{
    static DWORD dwCheckPoint = 1;
    BOOL res = TRUE;

    if (status->dwCurrentState == SERVICE_START_PENDING)
    {
        status->dwControlsAccepted = 0;
    }
    else
    {
        status->dwControlsAccepted = SERVICE_ACCEPT_STOP;
    }

    if (status->dwCurrentState == SERVICE_RUNNING
        || status->dwCurrentState == SERVICE_STOPPED)
    {
        status->dwCheckPoint = 0;
    }
    else
    {
        status->dwCheckPoint = dwCheckPoint++;
    }

    /* Report the status of the service to the service control manager. */
    res = FUNC1(service, status);
    if (!res)
    {
        FUNC0(MSG_FLAGS_ERROR, FUNC2("SetServiceStatus"));
    }

    return res;
}