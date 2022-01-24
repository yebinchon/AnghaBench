#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t openvpn_service_type ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SC_MANAGER_ALL_ACCESS ; 
 int /*<<< orphan*/  SERVICE_ALL_ACCESS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,...) ; 
 TYPE_1__* openvpn_service ; 

__attribute__((used)) static int
FUNC7(openvpn_service_type type)
{
    int ret = 1;
    SC_HANDLE svc_ctl_mgr;
    SC_HANDLE service;

    svc_ctl_mgr = FUNC2(NULL, NULL, SC_MANAGER_ALL_ACCESS);
    if (svc_ctl_mgr == NULL)
    {
        FUNC6(FUNC5("OpenSCManager failed - %s\n"), FUNC1());
        return 1;
    }

    service = FUNC3(svc_ctl_mgr, openvpn_service[type].name, SERVICE_ALL_ACCESS);
    if (service)
    {
        if (FUNC4(service, 0, NULL))
        {
            FUNC6(FUNC5("Service Started\n"));
            ret = 0;
        }
        else
        {
            FUNC6(FUNC5("StartService failed - %s\n"), FUNC1());
        }

        FUNC0(service);
    }
    else
    {
        FUNC6(FUNC5("OpenService failed - %s\n"), FUNC1());
    }

    FUNC0(svc_ctl_mgr);
    return ret;
}