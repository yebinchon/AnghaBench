
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int display_name; int name; } ;
typedef TYPE_1__ openvpn_service_t ;
struct TYPE_7__ {scalar_t__ dwCurrentState; } ;
typedef TYPE_2__ SERVICE_STATUS ;
typedef int * SC_HANDLE ;


 int CloseServiceHandle (int *) ;
 scalar_t__ ControlService (int *,int ,TYPE_2__*) ;
 int DELETE ;
 scalar_t__ DeleteService (int *) ;
 int GetLastErrorText () ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int ,int) ;
 scalar_t__ QueryServiceStatus (int *,TYPE_2__*) ;
 int SC_MANAGER_CONNECT ;
 int SERVICE_CONTROL_STOP ;
 int SERVICE_QUERY_STATUS ;
 int SERVICE_STOP ;
 scalar_t__ SERVICE_STOPPED ;
 scalar_t__ SERVICE_STOP_PENDING ;
 int Sleep (int) ;
 int TEXT (char*) ;
 int _service_max ;
 int _tprintf (int ,...) ;
 TYPE_1__* openvpn_service ;

__attribute__((used)) static int
CmdRemoveServices()
{
    SC_HANDLE service;
    SC_HANDLE svc_ctl_mgr;
    SERVICE_STATUS status;
    int i, ret = _service_max;

    svc_ctl_mgr = OpenSCManager(((void*)0), ((void*)0), SC_MANAGER_CONNECT);
    if (svc_ctl_mgr == ((void*)0))
    {
        _tprintf(TEXT("OpenSCManager failed - %s\n"), GetLastErrorText());
        return 1;
    }

    for (i = 0; i < _service_max; i++)
    {
        openvpn_service_t *ovpn_svc = &openvpn_service[i];
        service = OpenService(svc_ctl_mgr, ovpn_svc->name,
                              DELETE | SERVICE_STOP | SERVICE_QUERY_STATUS);
        if (service == ((void*)0))
        {
            _tprintf(TEXT("OpenService failed - %s\n"), GetLastErrorText());
            goto out;
        }


        if (ControlService(service, SERVICE_CONTROL_STOP, &status))
        {
            _tprintf(TEXT("Stopping %s."), ovpn_svc->display_name);
            Sleep(1000);

            while (QueryServiceStatus(service, &status))
            {
                if (status.dwCurrentState == SERVICE_STOP_PENDING)
                {
                    _tprintf(TEXT("."));
                    Sleep(1000);
                }
                else
                {
                    break;
                }
            }

            if (status.dwCurrentState == SERVICE_STOPPED)
            {
                _tprintf(TEXT("\n%s stopped.\n"), ovpn_svc->display_name);
            }
            else
            {
                _tprintf(TEXT("\n%s failed to stop.\n"), ovpn_svc->display_name);
            }
        }


        if (DeleteService(service))
        {
            _tprintf(TEXT("%s removed.\n"), ovpn_svc->display_name);
            --ret;
        }
        else
        {
            _tprintf(TEXT("DeleteService failed - %s\n"), GetLastErrorText());
        }

        CloseServiceHandle(service);
    }

out:
    CloseServiceHandle(svc_ctl_mgr);
    return ret;
}
