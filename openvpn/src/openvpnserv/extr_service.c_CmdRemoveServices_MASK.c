#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  display_name; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ openvpn_service_t ;
struct TYPE_7__ {scalar_t__ dwCurrentState; } ;
typedef  TYPE_2__ SERVICE_STATUS ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int DELETE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int /*<<< orphan*/  SERVICE_CONTROL_STOP ; 
 int SERVICE_QUERY_STATUS ; 
 int SERVICE_STOP ; 
 scalar_t__ SERVICE_STOPPED ; 
 scalar_t__ SERVICE_STOP_PENDING ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int _service_max ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,...) ; 
 TYPE_1__* openvpn_service ; 

__attribute__((used)) static int
FUNC10()
{
    SC_HANDLE service;
    SC_HANDLE svc_ctl_mgr;
    SERVICE_STATUS status;
    int i, ret = _service_max;

    svc_ctl_mgr = FUNC4(NULL, NULL, SC_MANAGER_CONNECT);
    if (svc_ctl_mgr == NULL)
    {
        FUNC9(FUNC8("OpenSCManager failed - %s\n"), FUNC3());
        return 1;
    }

    for (i = 0; i < _service_max; i++)
    {
        openvpn_service_t *ovpn_svc = &openvpn_service[i];
        service = FUNC5(svc_ctl_mgr, ovpn_svc->name,
                              DELETE | SERVICE_STOP | SERVICE_QUERY_STATUS);
        if (service == NULL)
        {
            FUNC9(FUNC8("OpenService failed - %s\n"), FUNC3());
            goto out;
        }

        /* try to stop the service */
        if (FUNC1(service, SERVICE_CONTROL_STOP, &status))
        {
            FUNC9(FUNC8("Stopping %s."), ovpn_svc->display_name);
            FUNC7(1000);

            while (FUNC6(service, &status))
            {
                if (status.dwCurrentState == SERVICE_STOP_PENDING)
                {
                    FUNC9(FUNC8("."));
                    FUNC7(1000);
                }
                else
                {
                    break;
                }
            }

            if (status.dwCurrentState == SERVICE_STOPPED)
            {
                FUNC9(FUNC8("\n%s stopped.\n"), ovpn_svc->display_name);
            }
            else
            {
                FUNC9(FUNC8("\n%s failed to stop.\n"), ovpn_svc->display_name);
            }
        }

        /* now remove the service */
        if (FUNC2(service))
        {
            FUNC9(FUNC8("%s removed.\n"), ovpn_svc->display_name);
            --ret;
        }
        else
        {
            FUNC9(FUNC8("DeleteService failed - %s\n"), FUNC3());
        }

        FUNC0(service);
    }

out:
    FUNC0(svc_ctl_mgr);
    return ret;
}