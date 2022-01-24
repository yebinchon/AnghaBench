#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int ULONG ;
struct TYPE_12__ {int /*<<< orphan*/  Buffer; } ;
struct TYPE_14__ {TYPE_3__ Name; } ;
struct TYPE_10__ {scalar_t__ dwServiceType; scalar_t__ dwWaitHint; scalar_t__ dwCheckPoint; scalar_t__ dwServiceSpecificExitCode; int /*<<< orphan*/  dwWin32ExitCode; int /*<<< orphan*/  dwControlsAccepted; int /*<<< orphan*/  dwCurrentState; } ;
struct TYPE_13__ {TYPE_2__* lpGroup; TYPE_1__ Status; int /*<<< orphan*/  lpServiceName; } ;
struct TYPE_11__ {scalar_t__ ServicesRunning; } ;
typedef  TYPE_4__* PSERVICE ;
typedef  TYPE_5__* POBJECT_DIRECTORY_INFORMATION ;
typedef  int /*<<< orphan*/  OBJECT_DIRECTORY_INFORMATION ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DIRECTORY_QUERY ; 
 int DIRECTORY_TRAVERSE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_5__*,int,scalar_t__,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  SERVICE_ACCEPT_STOP ; 
 scalar_t__ SERVICE_FILE_SYSTEM_DRIVER ; 
 scalar_t__ SERVICE_KERNEL_DRIVER ; 
 int /*<<< orphan*/  SERVICE_RUNNING ; 
 scalar_t__ STATUS_NO_MORE_ENTRIES ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS
FUNC12(PSERVICE Service)
{
    OBJECT_ATTRIBUTES ObjectAttributes;
    UNICODE_STRING DirName;
    HANDLE DirHandle;
    NTSTATUS Status;
    POBJECT_DIRECTORY_INFORMATION DirInfo;
    ULONG BufferLength;
    ULONG DataLength;
    ULONG Index;

    FUNC1("ScmCheckDriver(%S) called\n", Service->lpServiceName);

    if (Service->Status.dwServiceType == SERVICE_KERNEL_DRIVER)
    {
        FUNC10(&DirName, L"\\Driver");
    }
    else // if (Service->Status.dwServiceType == SERVICE_FILE_SYSTEM_DRIVER)
    {
        FUNC0(Service->Status.dwServiceType == SERVICE_FILE_SYSTEM_DRIVER);
        FUNC10(&DirName, L"\\FileSystem");
    }

    FUNC5(&ObjectAttributes,
                               &DirName,
                               0,
                               NULL,
                               NULL);

    Status = FUNC8(&DirHandle,
                                   DIRECTORY_QUERY | DIRECTORY_TRAVERSE,
                                   &ObjectAttributes);
    if (!FUNC6(Status))
    {
        return Status;
    }

    BufferLength = sizeof(OBJECT_DIRECTORY_INFORMATION) +
                       2 * MAX_PATH * sizeof(WCHAR);
    DirInfo = FUNC3(FUNC2(),
                        HEAP_ZERO_MEMORY,
                        BufferLength);

    Index = 0;
    while (TRUE)
    {
        Status = FUNC9(DirHandle,
                                        DirInfo,
                                        BufferLength,
                                        TRUE,
                                        FALSE,
                                        &Index,
                                        &DataLength);
        if (Status == STATUS_NO_MORE_ENTRIES)
        {
            /* FIXME: Add current service to 'failed service' list */
            FUNC1("Service '%S' failed\n", Service->lpServiceName);
            break;
        }

        if (!FUNC6(Status))
            break;

        FUNC1("Comparing: '%S'  '%wZ'\n", Service->lpServiceName, &DirInfo->Name);

        if (FUNC11(Service->lpServiceName, DirInfo->Name.Buffer) == 0)
        {
            FUNC1("Found: '%S'  '%wZ'\n",
                   Service->lpServiceName, &DirInfo->Name);

            /* Mark service as 'running' */
            Service->Status.dwCurrentState = SERVICE_RUNNING;
            Service->Status.dwControlsAccepted = SERVICE_ACCEPT_STOP;
            Service->Status.dwWin32ExitCode = ERROR_SUCCESS;
            Service->Status.dwServiceSpecificExitCode = 0;
            Service->Status.dwCheckPoint = 0;
            Service->Status.dwWaitHint = 0;

            /* Mark the service group as 'running' */
            if (Service->lpGroup != NULL)
            {
                Service->lpGroup->ServicesRunning = TRUE;
            }

            break;
        }
    }

    FUNC4(FUNC2(),
             0,
             DirInfo);
    FUNC7(DirHandle);

    return STATUS_SUCCESS;
}