
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UNICODE_STRING ;
struct TYPE_3__ {int lpServiceName; } ;
typedef int * PWSTR ;
typedef TYPE_1__* PSERVICE ;
typedef int NTSTATUS ;
typedef int DWORD ;
typedef int BOOLEAN ;


 int DPRINT (char*,int *) ;
 int DPRINT1 (char*,int ) ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int NT_SUCCESS (int ) ;
 int NtLoadDriver (int *) ;
 int RtlAdjustPrivilege (int ,int ,int ,int *) ;
 int RtlInitUnicodeString (int *,int *) ;
 int RtlNtStatusToDosError (int ) ;
 int SE_LOAD_DRIVER_PRIVILEGE ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int wcscat (int *,int ) ;
 int wcscpy (int *,char*) ;
 int wcslen (int ) ;

__attribute__((used)) static
DWORD
ScmLoadDriver(PSERVICE lpService)
{
    NTSTATUS Status = STATUS_SUCCESS;
    BOOLEAN WasPrivilegeEnabled = FALSE;
    PWSTR pszDriverPath;
    UNICODE_STRING DriverPath;



    pszDriverPath = HeapAlloc(GetProcessHeap(),
                              HEAP_ZERO_MEMORY,
                              (52 + wcslen(lpService->lpServiceName) + 1) * sizeof(WCHAR));
    if (pszDriverPath == ((void*)0))
        return ERROR_NOT_ENOUGH_MEMORY;

    wcscpy(pszDriverPath,
           L"\\Registry\\Machine\\System\\CurrentControlSet\\Services\\");
    wcscat(pszDriverPath,
           lpService->lpServiceName);

    RtlInitUnicodeString(&DriverPath,
                         pszDriverPath);

    DPRINT("  Path: %wZ\n", &DriverPath);


    Status = RtlAdjustPrivilege(SE_LOAD_DRIVER_PRIVILEGE,
                                TRUE,
                                FALSE,
                                &WasPrivilegeEnabled);
    if (!NT_SUCCESS(Status))
    {

        DPRINT1("SERVICES: Cannot acquire driver-loading privilege, Status = 0x%08lx\n", Status);
        goto done;
    }

    Status = NtLoadDriver(&DriverPath);


    RtlAdjustPrivilege(SE_LOAD_DRIVER_PRIVILEGE,
                       WasPrivilegeEnabled,
                       FALSE,
                       &WasPrivilegeEnabled);

done:
    HeapFree(GetProcessHeap(), 0, pszDriverPath);
    return RtlNtStatusToDosError(Status);
}
