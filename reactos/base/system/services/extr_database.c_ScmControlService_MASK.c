#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_13__ {scalar_t__ hEvent; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int dwServiceNameOffset; scalar_t__ dwArgumentsOffset; scalar_t__ dwArgumentsCount; int /*<<< orphan*/  hServiceStatus; scalar_t__ dwControl; scalar_t__ dwSize; } ;
struct TYPE_11__ {scalar_t__ dwError; } ;
typedef  int /*<<< orphan*/  SERVICE_STATUS_HANDLE ;
typedef  TYPE_1__ SCM_REPLY_PACKET ;
typedef  int /*<<< orphan*/  SCM_CONTROL_PACKET ;
typedef  scalar_t__ PWSTR ;
typedef  TYPE_2__* PSCM_CONTROL_PACKET ;
typedef  scalar_t__ PBYTE ;
typedef  TYPE_3__ OVERLAPPED ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ControlServiceCriticalSection ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ ERROR_IO_PENDING ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SERVICE_REQUEST_TIMEOUT ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__,TYPE_3__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PipeTimeout ; 
 scalar_t__ FUNC10 (scalar_t__,TYPE_1__*,int,scalar_t__*,TYPE_3__*) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__,TYPE_2__*,scalar_t__,scalar_t__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 int FUNC14 (scalar_t__) ; 

DWORD
FUNC15(HANDLE hControlPipe,
                  PWSTR pServiceName,
                  SERVICE_STATUS_HANDLE hServiceStatus,
                  DWORD dwControl)
{
    PSCM_CONTROL_PACKET ControlPacket;
    SCM_REPLY_PACKET ReplyPacket;

    DWORD dwWriteCount = 0;
    DWORD dwReadCount = 0;
    DWORD PacketSize;
    PWSTR Ptr;
    DWORD dwError = ERROR_SUCCESS;
    BOOL bResult;
    OVERLAPPED Overlapped = {0};

    FUNC1("ScmControlService() called\n");

    /* Acquire the service control critical section, to synchronize requests */
    FUNC3(&ControlServiceCriticalSection);

    /* Calculate the total length of the start command line */
    PacketSize = sizeof(SCM_CONTROL_PACKET);
    PacketSize += (DWORD)((FUNC14(pServiceName) + 1) * sizeof(WCHAR));

    ControlPacket = FUNC7(FUNC6(),
                              HEAP_ZERO_MEMORY,
                              PacketSize);
    if (ControlPacket == NULL)
    {
        FUNC9(&ControlServiceCriticalSection);
        return ERROR_NOT_ENOUGH_MEMORY;
    }

    ControlPacket->dwSize = PacketSize;
    ControlPacket->dwControl = dwControl;
    ControlPacket->hServiceStatus = hServiceStatus;

    ControlPacket->dwServiceNameOffset = sizeof(SCM_CONTROL_PACKET);

    Ptr = (PWSTR)((PBYTE)ControlPacket + ControlPacket->dwServiceNameOffset);
    FUNC13(Ptr, pServiceName);

    ControlPacket->dwArgumentsCount = 0;
    ControlPacket->dwArgumentsOffset = 0;

    bResult = FUNC12(hControlPipe,
                        ControlPacket,
                        PacketSize,
                        &dwWriteCount,
                        &Overlapped);
    if (bResult == FALSE)
    {
        FUNC1("WriteFile() returned FALSE\n");

        dwError = FUNC4();
        if (dwError == ERROR_IO_PENDING)
        {
            FUNC1("dwError: ERROR_IO_PENDING\n");

            dwError = FUNC11(hControlPipe,
                                          PipeTimeout);
            FUNC1("WaitForSingleObject() returned %lu\n", dwError);

            if (dwError == WAIT_TIMEOUT)
            {
                bResult = FUNC0(hControlPipe);
                if (bResult == FALSE)
                {
                    FUNC2("CancelIo() failed (Error: %lu)\n", FUNC4());
                }

                dwError = ERROR_SERVICE_REQUEST_TIMEOUT;
                goto Done;
            }
            else if (dwError == WAIT_OBJECT_0)
            {
                bResult = FUNC5(hControlPipe,
                                              &Overlapped,
                                              &dwWriteCount,
                                              TRUE);
                if (bResult == FALSE)
                {
                    dwError = FUNC4();
                    FUNC2("GetOverlappedResult() failed (Error %lu)\n", dwError);

                    goto Done;
                }
            }
        }
        else
        {
            FUNC2("WriteFile() failed (Error %lu)\n", dwError);
            goto Done;
        }
    }

    /* Read the reply */
    Overlapped.hEvent = (HANDLE) NULL;

    bResult = FUNC10(hControlPipe,
                       &ReplyPacket,
                       sizeof(SCM_REPLY_PACKET),
                       &dwReadCount,
                       &Overlapped);
    if (bResult == FALSE)
    {
        FUNC1("ReadFile() returned FALSE\n");

        dwError = FUNC4();
        if (dwError == ERROR_IO_PENDING)
        {
            FUNC1("dwError: ERROR_IO_PENDING\n");

            dwError = FUNC11(hControlPipe,
                                          PipeTimeout);
            FUNC1("WaitForSingleObject() returned %lu\n", dwError);

            if (dwError == WAIT_TIMEOUT)
            {
                bResult = FUNC0(hControlPipe);
                if (bResult == FALSE)
                {
                    FUNC2("CancelIo() failed (Error: %lu)\n", FUNC4());
                }

                dwError = ERROR_SERVICE_REQUEST_TIMEOUT;
                goto Done;
            }
            else if (dwError == WAIT_OBJECT_0)
            {
                bResult = FUNC5(hControlPipe,
                                              &Overlapped,
                                              &dwReadCount,
                                              TRUE);
                if (bResult == FALSE)
                {
                    dwError = FUNC4();
                    FUNC2("GetOverlappedResult() failed (Error %lu)\n", dwError);

                    goto Done;
                }
            }
        }
        else
        {
            FUNC2("ReadFile() failed (Error %lu)\n", dwError);
            goto Done;
        }
    }

Done:
    /* Release the control packet */
    FUNC8(FUNC6(),
             0,
             ControlPacket);

    if (dwReadCount == sizeof(SCM_REPLY_PACKET))
    {
        dwError = ReplyPacket.dwError;
    }

    FUNC9(&ControlServiceCriticalSection);

    FUNC1("ScmControlService() done\n");

    return dwError;
}