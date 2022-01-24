#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  Value ;
struct TYPE_10__ {char* Data1; int /*<<< orphan*/ * Data4; int /*<<< orphan*/  Data3; int /*<<< orphan*/  Data2; } ;
typedef  TYPE_1__ UUID ;
struct TYPE_11__ {int cb; scalar_t__ hProcess; scalar_t__ hThread; } ;
typedef  int /*<<< orphan*/  StartupInfo ;
typedef  int /*<<< orphan*/  ShowWizard ;
typedef  TYPE_2__ STARTUPINFOW ;
typedef  int /*<<< orphan*/  ProcessInfo ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int* PCWSTR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  InstallEventName ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int CONFIGFLAG_FAILEDINSTALL ; 
 int /*<<< orphan*/  CREATE_UNICODE_ENVIRONMENT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int,int*) ; 
 scalar_t__ FUNC5 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int* ERROR_PIPE_CONNECTED ; 
 scalar_t__ ERROR_SUCCESS ; 
 int FALSE ; 
 int* FUNC11 () ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  PIPE_ACCESS_OUTBOUND ; 
 int /*<<< orphan*/  PIPE_TYPE_BYTE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  hEnumKey ; 
 scalar_t__ hUserToken ; 
 int /*<<< orphan*/  FUNC19 (int*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int*,int*) ; 
 int /*<<< orphan*/  FUNC21 (int*,char*) ; 
 int FUNC22 (int*) ; 

__attribute__((used)) static BOOL
FUNC23(PCWSTR DeviceInstance, BOOL ShowWizard)
{
    BOOL DeviceInstalled = FALSE;
    DWORD BytesWritten;
    DWORD Value;
    HANDLE hInstallEvent;
    HANDLE hPipe = INVALID_HANDLE_VALUE;
    LPVOID Environment = NULL;
    PROCESS_INFORMATION ProcessInfo;
    STARTUPINFOW StartupInfo;
    UUID RandomUuid;
    HKEY DeviceKey;

    /* The following lengths are constant (see below), they cannot overflow */
    WCHAR CommandLine[116];
    WCHAR InstallEventName[73];
    WCHAR PipeName[74];
    WCHAR UuidString[39];

    FUNC8("InstallDevice(%S, %d)\n", DeviceInstance, ShowWizard);

    FUNC18(&ProcessInfo, sizeof(ProcessInfo));

    if (FUNC13(hEnumKey,
                      DeviceInstance,
                      0,
                      KEY_QUERY_VALUE,
                      &DeviceKey) == ERROR_SUCCESS)
    {
        if (FUNC14(DeviceKey,
                             L"Class",
                             NULL,
                             NULL,
                             NULL,
                             NULL) == ERROR_SUCCESS)
        {
            FUNC8("No need to install: %S\n", DeviceInstance);
            FUNC12(DeviceKey);
            return TRUE;
        }

        BytesWritten = sizeof(DWORD);
        if (FUNC14(DeviceKey,
                             L"ConfigFlags",
                             NULL,
                             NULL,
                             (PBYTE)&Value,
                             &BytesWritten) == ERROR_SUCCESS)
        {
            if (Value & CONFIGFLAG_FAILEDINSTALL)
            {
                FUNC8("No need to install: %S\n", DeviceInstance);
                FUNC12(DeviceKey);
                return TRUE;
            }
        }

        FUNC12(DeviceKey);
    }

    FUNC9("Installing: %S\n", DeviceInstance);

    /* Create a random UUID for the named pipe & event*/
    FUNC15(&RandomUuid);
    FUNC19(UuidString, L"{%08X-%04X-%04X-%02X%02X-%02X%02X%02X%02X%02X%02X}",
        RandomUuid.Data1, RandomUuid.Data2, RandomUuid.Data3,
        RandomUuid.Data4[0], RandomUuid.Data4[1], RandomUuid.Data4[2],
        RandomUuid.Data4[3], RandomUuid.Data4[4], RandomUuid.Data4[5],
        RandomUuid.Data4[6], RandomUuid.Data4[7]);

    /* Create the event */
    FUNC21(InstallEventName, L"Global\\PNP_Device_Install_Event_0.");
    FUNC20(InstallEventName, UuidString);
    hInstallEvent = FUNC4(NULL, TRUE, FALSE, InstallEventName);
    if (!hInstallEvent)
    {
        FUNC9("CreateEventW('%ls') failed with error %lu\n", InstallEventName, FUNC11());
        goto cleanup;
    }

    /* Create the named pipe */
    FUNC21(PipeName, L"\\\\.\\pipe\\PNP_Device_Install_Pipe_0.");
    FUNC20(PipeName, UuidString);
    hPipe = FUNC5(PipeName, PIPE_ACCESS_OUTBOUND, PIPE_TYPE_BYTE, 1, 512, 512, 0, NULL);
    if (hPipe == INVALID_HANDLE_VALUE)
    {
        FUNC9("CreateNamedPipeW failed with error %u\n", FUNC11());
        goto cleanup;
    }

    /* Launch rundll32 to call ClientSideInstallW */
    FUNC21(CommandLine, L"rundll32.exe newdev.dll,ClientSideInstall ");
    FUNC20(CommandLine, PipeName);

    FUNC18(&StartupInfo, sizeof(StartupInfo));
    StartupInfo.cb = sizeof(StartupInfo);

    if (hUserToken)
    {
        /* newdev has to run under the environment of the current user */
        if (!FUNC3(&Environment, hUserToken, FALSE))
        {
            FUNC9("CreateEnvironmentBlock failed with error %d\n", FUNC11());
            goto cleanup;
        }

        if (!FUNC6(hUserToken, NULL, CommandLine, NULL, NULL, FALSE, CREATE_UNICODE_ENVIRONMENT, Environment, NULL, &StartupInfo, &ProcessInfo))
        {
            FUNC9("CreateProcessAsUserW failed with error %u\n", FUNC11());
            goto cleanup;
        }
    }
    else
    {
        /* FIXME: This is probably not correct, I guess newdev should never be run with SYSTEM privileges.

           Still, we currently do that in 2nd stage setup and probably Console mode as well, so allow it here.
           (ShowWizard is only set to FALSE for these two modes) */
        FUNC0(!ShowWizard);

        if (!FUNC7(NULL, CommandLine, NULL, NULL, FALSE, 0, NULL, NULL, &StartupInfo, &ProcessInfo))
        {
            FUNC9("CreateProcessW failed with error %u\n", FUNC11());
            goto cleanup;
        }
    }

    /* Wait for the function to connect to our pipe */
    if (!FUNC2(hPipe, NULL))
    {
        if (FUNC11() != ERROR_PIPE_CONNECTED)
        {
            FUNC9("ConnectNamedPipe failed with error %u\n", FUNC11());
            goto cleanup;
        }
    }

    /* Pass the data. The following output is partly compatible to Windows XP SP2 (researched using a modified newdev.dll to log this stuff) */
    Value = sizeof(InstallEventName);
    FUNC17(hPipe, &Value, sizeof(Value), &BytesWritten, NULL);
    FUNC17(hPipe, InstallEventName, Value, &BytesWritten, NULL);

    /* I couldn't figure out what the following value means under WinXP. It's usually 0 in my tests, but was also 5 once.
       Therefore the following line is entirely ReactOS-specific. We use the value here to pass the ShowWizard variable. */
    FUNC17(hPipe, &ShowWizard, sizeof(ShowWizard), &BytesWritten, NULL);

    Value = (FUNC22(DeviceInstance) + 1) * sizeof(WCHAR);
    FUNC17(hPipe, &Value, sizeof(Value), &BytesWritten, NULL);
    FUNC17(hPipe, DeviceInstance, Value, &BytesWritten, NULL);

    /* Wait for newdev.dll to finish processing */
    FUNC16(ProcessInfo.hProcess, INFINITE);

    /* If the event got signalled, this is success */
    DeviceInstalled = FUNC16(hInstallEvent, 0) == WAIT_OBJECT_0;

cleanup:
    if (hInstallEvent)
        FUNC1(hInstallEvent);

    if (hPipe != INVALID_HANDLE_VALUE)
        FUNC1(hPipe);

    if (Environment)
        FUNC10(Environment);

    if (ProcessInfo.hProcess)
        FUNC1(ProcessInfo.hProcess);

    if (ProcessInfo.hThread)
        FUNC1(ProcessInfo.hThread);

    if (!DeviceInstalled)
    {
        FUNC9("InstallDevice failed for DeviceInstance '%ws'\n", DeviceInstance);
    }

    return DeviceInstalled;
}