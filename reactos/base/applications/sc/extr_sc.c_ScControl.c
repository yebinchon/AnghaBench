
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPCTSTR ;
typedef int INT ;
typedef int DWORD ;


 int ContinueUsage () ;
 int Control (int,int *,int **,int) ;
 int ControlUsage () ;
 int Create (int **,int) ;
 int Delete (int *) ;
 int DeleteUsage () ;
 int EnumDepend (int *) ;
 int EnumDependUsage () ;
 int FALSE ;
 int GetDisplayName (int *) ;
 int GetDisplayNameUsage () ;
 int GetKeyName (int *) ;
 int GetKeyNameUsage () ;
 int InterrogateUsage () ;
 int MainUsage () ;
 int PauseUsage () ;
 int Query (int **,int,int ) ;
 int QueryConfig (int *) ;
 int QueryConfigUsage () ;
 int QueryDescription (int *) ;
 int QueryDescriptionUsage () ;
 int QueryFailure (int *) ;
 int QueryFailureUsage () ;
 int SERVICE_CONTROL_CONTINUE ;
 int SERVICE_CONTROL_INTERROGATE ;
 int SERVICE_CONTROL_NETBINDADD ;
 int SERVICE_CONTROL_NETBINDDISABLE ;
 int SERVICE_CONTROL_NETBINDENABLE ;
 int SERVICE_CONTROL_NETBINDREMOVE ;
 int SERVICE_CONTROL_PARAMCHANGE ;
 int SERVICE_CONTROL_PAUSE ;
 int SERVICE_CONTROL_STOP ;
 int SdSet (int *,int *) ;
 int SdSetUsage () ;
 int SdShow (int *) ;
 int SdShowUsage () ;
 int SetConfig (int **,int) ;
 int SetDescription (int *,int *) ;
 int SetDescriptionUsage () ;
 int SetFailure (int **,int) ;
 int Start (int *,int **,int) ;
 int StartUsage () ;
 int StopUsage () ;
 int TRUE ;
 int _T (char*) ;
 int _tprintf (int ) ;
 int _ttoi (int *) ;
 int lstrcmpi (int *,int ) ;

__attribute__((used)) static INT
ScControl(LPCTSTR Server,
          LPCTSTR Command,
          LPCTSTR *ServiceArgs,
          DWORD ArgCount)
{
    LPCTSTR ServiceName = ((void*)0);

    if (Server)
    {
        _tprintf(_T("Remote service control is not yet implemented\n"));
        return 2;
    }

    if (!lstrcmpi(Command, _T("query")))
    {
        Query(ServiceArgs,
              ArgCount,
              FALSE);
    }
    else if (!lstrcmpi(Command, _T("queryex")))
    {
        Query(ServiceArgs,
              ArgCount,
              TRUE);
    }
    else if (!lstrcmpi(Command, _T("start")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            Start(ServiceName,
                  ServiceArgs,
                  ArgCount);
        }
        else
            StartUsage();
    }
    else if (!lstrcmpi(Command, _T("pause")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            Control(SERVICE_CONTROL_PAUSE,
                    ServiceName,
                    ServiceArgs,
                    ArgCount);
        }
        else
            PauseUsage();
    }
    else if (!lstrcmpi(Command, _T("interrogate")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            Control(SERVICE_CONTROL_INTERROGATE,
                    ServiceName,
                    ServiceArgs,
                    ArgCount);
        }
        else
            InterrogateUsage();
    }
    else if (!lstrcmpi(Command, _T("stop")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            Control(SERVICE_CONTROL_STOP,
                    ServiceName,
                    ServiceArgs,
                    ArgCount);
        }
        else
            StopUsage();
    }
    else if (!lstrcmpi(Command, _T("continue")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            Control(SERVICE_CONTROL_CONTINUE,
                    ServiceName,
                    ServiceArgs,
                    ArgCount);
        }
        else
            ContinueUsage();
    }
    else if (!lstrcmpi(Command, _T("delete")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            Delete(ServiceName);
        }
        else
            DeleteUsage();
    }
    else if (!lstrcmpi(Command, _T("create")))
    {
        Create(ServiceArgs, ArgCount);
    }
    else if (!lstrcmpi(Command, _T("control")))
    {
        INT ControlCode = 0;

        if (ArgCount > 1)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            if (!lstrcmpi(ServiceArgs[0], _T("paramchange")))
                ControlCode = SERVICE_CONTROL_PARAMCHANGE;
            else if (!lstrcmpi(ServiceArgs[0], _T("netbindadd")))
                ControlCode = SERVICE_CONTROL_NETBINDADD;
            else if (!lstrcmpi(ServiceArgs[0], _T("netbindremove")))
                ControlCode = SERVICE_CONTROL_NETBINDREMOVE;
            else if (!lstrcmpi(ServiceArgs[0], _T("netbindenable")))
                ControlCode = SERVICE_CONTROL_NETBINDENABLE;
            else if (!lstrcmpi(ServiceArgs[0], _T("netbinddisable")))
                ControlCode = SERVICE_CONTROL_NETBINDDISABLE;
            else
            {
                ControlCode = _ttoi(ServiceArgs[0]);
                if ((ControlCode < 128) || (ControlCode > 255))
                    ControlCode = 0;
            }

            ServiceArgs++;
            ArgCount--;

            if (ControlCode != 0)
                Control(ControlCode,
                        ServiceName,
                        ServiceArgs,
                        ArgCount);
            else
                ControlUsage();
        }
        else
            ControlUsage();
    }
    else if (!lstrcmpi(Command, _T("sdshow")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            SdShow(ServiceName);
        }
        else
            SdShowUsage();
    }
    else if (!lstrcmpi(Command, _T("sdset")))
    {
        LPCTSTR SecurityDescriptor;

        if (ArgCount > 1)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            SecurityDescriptor = *ServiceArgs++;
            ArgCount--;

            SdSet(ServiceName, SecurityDescriptor);
        }
        else
            SdSetUsage();
    }
    else if (!lstrcmpi(Command, _T("qc")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            QueryConfig(ServiceName);
        }
        else
            QueryConfigUsage();
    }
    else if (!lstrcmpi(Command, _T("qdescription")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            QueryDescription(ServiceName);
        }
        else
            QueryDescriptionUsage();
    }
    else if (!lstrcmpi(Command, _T("qfailure")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            QueryFailure(ServiceName);
        }
        else
            QueryFailureUsage();
    }
    else if (!lstrcmpi(Command, _T("description")))
    {
        LPCTSTR Description = ((void*)0);

        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            if (ArgCount > 0)
            {
                Description = *ServiceArgs++;
                ArgCount--;
            }

            SetDescription(ServiceName, Description);
        }
        else
            SetDescriptionUsage();
    }
    else if (!lstrcmpi(Command, _T("config")))
    {
        SetConfig(ServiceArgs, ArgCount);
    }
    else if (!lstrcmpi(Command, _T("failure")))
    {
        SetFailure(ServiceArgs, ArgCount);
    }
    else if (!lstrcmpi(Command, _T("GetDisplayName")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            GetDisplayName(ServiceName);
        }
        else
            GetDisplayNameUsage();
    }
    else if (!lstrcmpi(Command, _T("GetKeyName")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            GetKeyName(ServiceName);
        }
        else
            GetKeyNameUsage();
    }
    else if (!lstrcmpi(Command, _T("EnumDepend")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            EnumDepend(ServiceName);
        }
        else
            EnumDependUsage();
    }
    else
    {
        MainUsage();
    }

    return 0;
}
