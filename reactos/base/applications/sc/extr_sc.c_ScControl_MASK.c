#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * LPCTSTR ;
typedef  int INT ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int SERVICE_CONTROL_CONTINUE ; 
 int SERVICE_CONTROL_INTERROGATE ; 
 int SERVICE_CONTROL_NETBINDADD ; 
 int SERVICE_CONTROL_NETBINDDISABLE ; 
 int SERVICE_CONTROL_NETBINDENABLE ; 
 int SERVICE_CONTROL_NETBINDREMOVE ; 
 int SERVICE_CONTROL_PARAMCHANGE ; 
 int SERVICE_CONTROL_PAUSE ; 
 int SERVICE_CONTROL_STOP ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC33 (char*) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static INT
FUNC37(LPCTSTR Server,       // remote machine name
          LPCTSTR Command,      // sc command
          LPCTSTR *ServiceArgs, // any options
          DWORD ArgCount)       // argument counter
{
    LPCTSTR ServiceName = NULL;

    if (Server)
    {
        FUNC34(FUNC33("Remote service control is not yet implemented\n"));
        return 2;
    }

    if (!FUNC36(Command, FUNC33("query")))
    {
        FUNC15(ServiceArgs,
              ArgCount,
              FALSE);
    }
    else if (!FUNC36(Command, FUNC33("queryex")))
    {
        FUNC15(ServiceArgs,
              ArgCount,
              TRUE);
    }
    else if (!FUNC36(Command, FUNC33("start")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC30(ServiceName,
                  ServiceArgs,
                  ArgCount);
        }
        else
            FUNC31();
    }
    else if (!FUNC36(Command, FUNC33("pause")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC1(SERVICE_CONTROL_PAUSE,
                    ServiceName,
                    ServiceArgs,
                    ArgCount);
        }
        else
            FUNC14();
    }
    else if (!FUNC36(Command, FUNC33("interrogate")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC1(SERVICE_CONTROL_INTERROGATE,
                    ServiceName,
                    ServiceArgs,
                    ArgCount);
        }
        else
            FUNC12();
    }
    else if (!FUNC36(Command, FUNC33("stop")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC1(SERVICE_CONTROL_STOP,
                    ServiceName,
                    ServiceArgs,
                    ArgCount);
        }
        else
            FUNC32();
    }
    else if (!FUNC36(Command, FUNC33("continue")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC1(SERVICE_CONTROL_CONTINUE,
                    ServiceName,
                    ServiceArgs,
                    ArgCount);
        }
        else
            FUNC0();
    }
    else if (!FUNC36(Command, FUNC33("delete")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC4(ServiceName);
        }
        else
            FUNC5();
    }
    else if (!FUNC36(Command, FUNC33("create")))
    {
        FUNC3(ServiceArgs, ArgCount);
    }
    else if (!FUNC36(Command, FUNC33("control")))
    {
        INT ControlCode = 0;

        if (ArgCount > 1)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            if (!FUNC36(ServiceArgs[0], FUNC33("paramchange")))
                ControlCode = SERVICE_CONTROL_PARAMCHANGE;
            else if (!FUNC36(ServiceArgs[0], FUNC33("netbindadd")))
                ControlCode = SERVICE_CONTROL_NETBINDADD;
            else if (!FUNC36(ServiceArgs[0], FUNC33("netbindremove")))
                ControlCode = SERVICE_CONTROL_NETBINDREMOVE;
            else if (!FUNC36(ServiceArgs[0], FUNC33("netbindenable")))
                ControlCode = SERVICE_CONTROL_NETBINDENABLE;
            else if (!FUNC36(ServiceArgs[0], FUNC33("netbinddisable")))
                ControlCode = SERVICE_CONTROL_NETBINDDISABLE;
            else
            {
                ControlCode = FUNC35(ServiceArgs[0]);
                if ((ControlCode < 128) || (ControlCode > 255))
                    ControlCode = 0;
            }

            ServiceArgs++;
            ArgCount--;

            if (ControlCode != 0)
                FUNC1(ControlCode,
                        ServiceName,
                        ServiceArgs,
                        ArgCount);
            else
                FUNC2();
        }
        else
            FUNC2();
    }
    else if (!FUNC36(Command, FUNC33("sdshow")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC24(ServiceName);
        }
        else
            FUNC25();
    }
    else if (!FUNC36(Command, FUNC33("sdset")))
    {
        LPCTSTR SecurityDescriptor;

        if (ArgCount > 1)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            SecurityDescriptor = *ServiceArgs++;
            ArgCount--;

            FUNC22(ServiceName, SecurityDescriptor);
        }
        else
            FUNC23();
    }
    else if (!FUNC36(Command, FUNC33("qc")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC16(ServiceName);
        }
        else
            FUNC17();
    }
    else if (!FUNC36(Command, FUNC33("qdescription")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC18(ServiceName);
        }
        else
            FUNC19();
    }
    else if (!FUNC36(Command, FUNC33("qfailure")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC20(ServiceName);
        }
        else
            FUNC21();
    }
    else if (!FUNC36(Command, FUNC33("description")))
    {
        LPCTSTR Description = NULL;

        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            if (ArgCount > 0)
            {
                Description = *ServiceArgs++;
                ArgCount--;
            }

            FUNC27(ServiceName, Description);
        }
        else
            FUNC28();
    }
    else if (!FUNC36(Command, FUNC33("config")))
    {
        FUNC26(ServiceArgs, ArgCount);
    }
    else if (!FUNC36(Command, FUNC33("failure")))
    {
        FUNC29(ServiceArgs, ArgCount);
    }
    else if (!FUNC36(Command, FUNC33("GetDisplayName")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC8(ServiceName);
        }
        else
            FUNC9();
    }
    else if (!FUNC36(Command, FUNC33("GetKeyName")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC10(ServiceName);
        }
        else
            FUNC11();
    }
    else if (!FUNC36(Command, FUNC33("EnumDepend")))
    {
        if (ArgCount > 0)
        {
            ServiceName = *ServiceArgs++;
            ArgCount--;

            FUNC6(ServiceName);
        }
        else
            FUNC7();
    }
    else
    {
        FUNC13();
    }

    return 0;
}