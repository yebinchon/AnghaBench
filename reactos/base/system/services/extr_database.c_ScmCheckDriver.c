
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UNICODE_STRING ;
typedef int ULONG ;
struct TYPE_12__ {int Buffer; } ;
struct TYPE_14__ {TYPE_3__ Name; } ;
struct TYPE_10__ {scalar_t__ dwServiceType; scalar_t__ dwWaitHint; scalar_t__ dwCheckPoint; scalar_t__ dwServiceSpecificExitCode; int dwWin32ExitCode; int dwControlsAccepted; int dwCurrentState; } ;
struct TYPE_13__ {TYPE_2__* lpGroup; TYPE_1__ Status; int lpServiceName; } ;
struct TYPE_11__ {scalar_t__ ServicesRunning; } ;
typedef TYPE_4__* PSERVICE ;
typedef TYPE_5__* POBJECT_DIRECTORY_INFORMATION ;
typedef int OBJECT_DIRECTORY_INFORMATION ;
typedef int OBJECT_ATTRIBUTES ;
typedef scalar_t__ NTSTATUS ;
typedef int HANDLE ;


 int ASSERT (int) ;
 int DIRECTORY_QUERY ;
 int DIRECTORY_TRAVERSE ;
 int DPRINT (char*,int ,...) ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_5__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_5__*) ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int MAX_PATH ;
 int NT_SUCCESS (scalar_t__) ;
 int NtClose (int ) ;
 scalar_t__ NtOpenDirectoryObject (int *,int,int *) ;
 scalar_t__ NtQueryDirectoryObject (int ,TYPE_5__*,int,scalar_t__,int ,int*,int*) ;
 int RtlInitUnicodeString (int *,char*) ;
 int SERVICE_ACCEPT_STOP ;
 scalar_t__ SERVICE_FILE_SYSTEM_DRIVER ;
 scalar_t__ SERVICE_KERNEL_DRIVER ;
 int SERVICE_RUNNING ;
 scalar_t__ STATUS_NO_MORE_ENTRIES ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ TRUE ;
 scalar_t__ _wcsicmp (int ,int ) ;

__attribute__((used)) static NTSTATUS
ScmCheckDriver(PSERVICE Service)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    UNICODE_STRING DirName;
    HANDLE DirHandle;
    NTSTATUS Status;
    POBJECT_DIRECTORY_INFORMATION DirInfo;
    ULONG BufferLength;
    ULONG DataLength;
    ULONG Index;

    DPRINT("ScmCheckDriver(%S) called\n", Service->lpServiceName);

    if (Service->Status.dwServiceType == SERVICE_KERNEL_DRIVER)
    {
        RtlInitUnicodeString(&DirName, L"\\Driver");
    }
    else
    {
        ASSERT(Service->Status.dwServiceType == SERVICE_FILE_SYSTEM_DRIVER);
        RtlInitUnicodeString(&DirName, L"\\FileSystem");
    }

    InitializeObjectAttributes(&ObjectAttributes,
                               &DirName,
                               0,
                               ((void*)0),
                               ((void*)0));

    Status = NtOpenDirectoryObject(&DirHandle,
                                   DIRECTORY_QUERY | DIRECTORY_TRAVERSE,
                                   &ObjectAttributes);
    if (!NT_SUCCESS(Status))
    {
        return Status;
    }

    BufferLength = sizeof(OBJECT_DIRECTORY_INFORMATION) +
                       2 * MAX_PATH * sizeof(WCHAR);
    DirInfo = HeapAlloc(GetProcessHeap(),
                        HEAP_ZERO_MEMORY,
                        BufferLength);

    Index = 0;
    while (TRUE)
    {
        Status = NtQueryDirectoryObject(DirHandle,
                                        DirInfo,
                                        BufferLength,
                                        TRUE,
                                        FALSE,
                                        &Index,
                                        &DataLength);
        if (Status == STATUS_NO_MORE_ENTRIES)
        {

            DPRINT("Service '%S' failed\n", Service->lpServiceName);
            break;
        }

        if (!NT_SUCCESS(Status))
            break;

        DPRINT("Comparing: '%S'  '%wZ'\n", Service->lpServiceName, &DirInfo->Name);

        if (_wcsicmp(Service->lpServiceName, DirInfo->Name.Buffer) == 0)
        {
            DPRINT("Found: '%S'  '%wZ'\n",
                   Service->lpServiceName, &DirInfo->Name);


            Service->Status.dwCurrentState = SERVICE_RUNNING;
            Service->Status.dwControlsAccepted = SERVICE_ACCEPT_STOP;
            Service->Status.dwWin32ExitCode = ERROR_SUCCESS;
            Service->Status.dwServiceSpecificExitCode = 0;
            Service->Status.dwCheckPoint = 0;
            Service->Status.dwWaitHint = 0;


            if (Service->lpGroup != ((void*)0))
            {
                Service->lpGroup->ServicesRunning = TRUE;
            }

            break;
        }
    }

    HeapFree(GetProcessHeap(),
             0,
             DirInfo);
    NtClose(DirHandle);

    return STATUS_SUCCESS;
}
