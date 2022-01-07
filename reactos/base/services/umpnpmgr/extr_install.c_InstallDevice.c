
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
typedef int Value ;
struct TYPE_10__ {char* Data1; int * Data4; int Data3; int Data2; } ;
typedef TYPE_1__ UUID ;
struct TYPE_11__ {int cb; scalar_t__ hProcess; scalar_t__ hThread; } ;
typedef int StartupInfo ;
typedef int ShowWizard ;
typedef TYPE_2__ STARTUPINFOW ;
typedef int ProcessInfo ;
typedef TYPE_2__ PROCESS_INFORMATION ;
typedef int* PCWSTR ;
typedef int * PBYTE ;
typedef int * LPVOID ;
typedef int InstallEventName ;
typedef int HKEY ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int ASSERT (int) ;
 int CONFIGFLAG_FAILEDINSTALL ;
 int CREATE_UNICODE_ENVIRONMENT ;
 int CloseHandle (scalar_t__) ;
 int ConnectNamedPipe (scalar_t__,int *) ;
 int CreateEnvironmentBlock (int **,scalar_t__,int) ;
 scalar_t__ CreateEventW (int *,int,int,int*) ;
 scalar_t__ CreateNamedPipeW (int*,int ,int ,int,int,int,int ,int *) ;
 int CreateProcessAsUserW (scalar_t__,int *,int*,int *,int *,int,int ,int *,int *,TYPE_2__*,TYPE_2__*) ;
 int CreateProcessW (int *,int*,int *,int *,int,int ,int *,int *,TYPE_2__*,TYPE_2__*) ;
 int DPRINT (char*,int*,...) ;
 int DPRINT1 (char*,int*,...) ;
 int DestroyEnvironmentBlock (int *) ;
 int* ERROR_PIPE_CONNECTED ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int* GetLastError () ;
 int INFINITE ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int KEY_QUERY_VALUE ;
 int PIPE_ACCESS_OUTBOUND ;
 int PIPE_TYPE_BYTE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,int*,int ,int ,int *) ;
 scalar_t__ RegQueryValueExW (int ,char*,int *,int *,int *,int*) ;
 int TRUE ;
 int UuidCreate (TYPE_1__*) ;
 scalar_t__ WAIT_OBJECT_0 ;
 scalar_t__ WaitForSingleObject (scalar_t__,int ) ;
 int WriteFile (scalar_t__,int*,int,int*,int *) ;
 int ZeroMemory (TYPE_2__*,int) ;
 int hEnumKey ;
 scalar_t__ hUserToken ;
 int swprintf (int*,char*,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int wcscat (int*,int*) ;
 int wcscpy (int*,char*) ;
 int wcslen (int*) ;

__attribute__((used)) static BOOL
InstallDevice(PCWSTR DeviceInstance, BOOL ShowWizard)
{
    BOOL DeviceInstalled = FALSE;
    DWORD BytesWritten;
    DWORD Value;
    HANDLE hInstallEvent;
    HANDLE hPipe = INVALID_HANDLE_VALUE;
    LPVOID Environment = ((void*)0);
    PROCESS_INFORMATION ProcessInfo;
    STARTUPINFOW StartupInfo;
    UUID RandomUuid;
    HKEY DeviceKey;


    WCHAR CommandLine[116];
    WCHAR InstallEventName[73];
    WCHAR PipeName[74];
    WCHAR UuidString[39];

    DPRINT("InstallDevice(%S, %d)\n", DeviceInstance, ShowWizard);

    ZeroMemory(&ProcessInfo, sizeof(ProcessInfo));

    if (RegOpenKeyExW(hEnumKey,
                      DeviceInstance,
                      0,
                      KEY_QUERY_VALUE,
                      &DeviceKey) == ERROR_SUCCESS)
    {
        if (RegQueryValueExW(DeviceKey,
                             L"Class",
                             ((void*)0),
                             ((void*)0),
                             ((void*)0),
                             ((void*)0)) == ERROR_SUCCESS)
        {
            DPRINT("No need to install: %S\n", DeviceInstance);
            RegCloseKey(DeviceKey);
            return TRUE;
        }

        BytesWritten = sizeof(DWORD);
        if (RegQueryValueExW(DeviceKey,
                             L"ConfigFlags",
                             ((void*)0),
                             ((void*)0),
                             (PBYTE)&Value,
                             &BytesWritten) == ERROR_SUCCESS)
        {
            if (Value & CONFIGFLAG_FAILEDINSTALL)
            {
                DPRINT("No need to install: %S\n", DeviceInstance);
                RegCloseKey(DeviceKey);
                return TRUE;
            }
        }

        RegCloseKey(DeviceKey);
    }

    DPRINT1("Installing: %S\n", DeviceInstance);


    UuidCreate(&RandomUuid);
    swprintf(UuidString, L"{%08X-%04X-%04X-%02X%02X-%02X%02X%02X%02X%02X%02X}",
        RandomUuid.Data1, RandomUuid.Data2, RandomUuid.Data3,
        RandomUuid.Data4[0], RandomUuid.Data4[1], RandomUuid.Data4[2],
        RandomUuid.Data4[3], RandomUuid.Data4[4], RandomUuid.Data4[5],
        RandomUuid.Data4[6], RandomUuid.Data4[7]);


    wcscpy(InstallEventName, L"Global\\PNP_Device_Install_Event_0.");
    wcscat(InstallEventName, UuidString);
    hInstallEvent = CreateEventW(((void*)0), TRUE, FALSE, InstallEventName);
    if (!hInstallEvent)
    {
        DPRINT1("CreateEventW('%ls') failed with error %lu\n", InstallEventName, GetLastError());
        goto cleanup;
    }


    wcscpy(PipeName, L"\\\\.\\pipe\\PNP_Device_Install_Pipe_0.");
    wcscat(PipeName, UuidString);
    hPipe = CreateNamedPipeW(PipeName, PIPE_ACCESS_OUTBOUND, PIPE_TYPE_BYTE, 1, 512, 512, 0, ((void*)0));
    if (hPipe == INVALID_HANDLE_VALUE)
    {
        DPRINT1("CreateNamedPipeW failed with error %u\n", GetLastError());
        goto cleanup;
    }


    wcscpy(CommandLine, L"rundll32.exe newdev.dll,ClientSideInstall ");
    wcscat(CommandLine, PipeName);

    ZeroMemory(&StartupInfo, sizeof(StartupInfo));
    StartupInfo.cb = sizeof(StartupInfo);

    if (hUserToken)
    {

        if (!CreateEnvironmentBlock(&Environment, hUserToken, FALSE))
        {
            DPRINT1("CreateEnvironmentBlock failed with error %d\n", GetLastError());
            goto cleanup;
        }

        if (!CreateProcessAsUserW(hUserToken, ((void*)0), CommandLine, ((void*)0), ((void*)0), FALSE, CREATE_UNICODE_ENVIRONMENT, Environment, ((void*)0), &StartupInfo, &ProcessInfo))
        {
            DPRINT1("CreateProcessAsUserW failed with error %u\n", GetLastError());
            goto cleanup;
        }
    }
    else
    {




        ASSERT(!ShowWizard);

        if (!CreateProcessW(((void*)0), CommandLine, ((void*)0), ((void*)0), FALSE, 0, ((void*)0), ((void*)0), &StartupInfo, &ProcessInfo))
        {
            DPRINT1("CreateProcessW failed with error %u\n", GetLastError());
            goto cleanup;
        }
    }


    if (!ConnectNamedPipe(hPipe, ((void*)0)))
    {
        if (GetLastError() != ERROR_PIPE_CONNECTED)
        {
            DPRINT1("ConnectNamedPipe failed with error %u\n", GetLastError());
            goto cleanup;
        }
    }


    Value = sizeof(InstallEventName);
    WriteFile(hPipe, &Value, sizeof(Value), &BytesWritten, ((void*)0));
    WriteFile(hPipe, InstallEventName, Value, &BytesWritten, ((void*)0));



    WriteFile(hPipe, &ShowWizard, sizeof(ShowWizard), &BytesWritten, ((void*)0));

    Value = (wcslen(DeviceInstance) + 1) * sizeof(WCHAR);
    WriteFile(hPipe, &Value, sizeof(Value), &BytesWritten, ((void*)0));
    WriteFile(hPipe, DeviceInstance, Value, &BytesWritten, ((void*)0));


    WaitForSingleObject(ProcessInfo.hProcess, INFINITE);


    DeviceInstalled = WaitForSingleObject(hInstallEvent, 0) == WAIT_OBJECT_0;

cleanup:
    if (hInstallEvent)
        CloseHandle(hInstallEvent);

    if (hPipe != INVALID_HANDLE_VALUE)
        CloseHandle(hPipe);

    if (Environment)
        DestroyEnvironmentBlock(Environment);

    if (ProcessInfo.hProcess)
        CloseHandle(ProcessInfo.hProcess);

    if (ProcessInfo.hThread)
        CloseHandle(ProcessInfo.hThread);

    if (!DeviceInstalled)
    {
        DPRINT1("InstallDevice failed for DeviceInstance '%ws'\n", DeviceInstance);
    }

    return DeviceInstalled;
}
