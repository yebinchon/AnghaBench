
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t openvpn_service_type ;
struct TYPE_2__ {int name; } ;
typedef int * SC_HANDLE ;


 int CloseServiceHandle (int *) ;
 int GetLastErrorText () ;
 int * OpenSCManager (int *,int *,int ) ;
 int * OpenService (int *,int ,int ) ;
 int SC_MANAGER_ALL_ACCESS ;
 int SERVICE_ALL_ACCESS ;
 scalar_t__ StartService (int *,int ,int *) ;
 int TEXT (char*) ;
 int _tprintf (int ,...) ;
 TYPE_1__* openvpn_service ;

__attribute__((used)) static int
CmdStartService(openvpn_service_type type)
{
    int ret = 1;
    SC_HANDLE svc_ctl_mgr;
    SC_HANDLE service;

    svc_ctl_mgr = OpenSCManager(((void*)0), ((void*)0), SC_MANAGER_ALL_ACCESS);
    if (svc_ctl_mgr == ((void*)0))
    {
        _tprintf(TEXT("OpenSCManager failed - %s\n"), GetLastErrorText());
        return 1;
    }

    service = OpenService(svc_ctl_mgr, openvpn_service[type].name, SERVICE_ALL_ACCESS);
    if (service)
    {
        if (StartService(service, 0, ((void*)0)))
        {
            _tprintf(TEXT("Service Started\n"));
            ret = 0;
        }
        else
        {
            _tprintf(TEXT("StartService failed - %s\n"), GetLastErrorText());
        }

        CloseServiceHandle(service);
    }
    else
    {
        _tprintf(TEXT("OpenService failed - %s\n"), GetLastErrorText());
    }

    CloseServiceHandle(svc_ctl_mgr);
    return ret;
}
