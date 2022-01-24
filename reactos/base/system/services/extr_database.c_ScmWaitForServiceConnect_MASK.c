#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_10__ {scalar_t__ dwProcessId; int /*<<< orphan*/  hControlPipe; } ;
struct TYPE_9__ {void* hEvent; int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {scalar_t__ lpDisplayName; TYPE_4__* lpImage; } ;
typedef  TYPE_1__* PSERVICE ;
typedef  TYPE_2__ OVERLAPPED ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  void* HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ ERROR_IO_PENDING ; 
 scalar_t__ ERROR_PIPE_CONNECTED ; 
 scalar_t__ ERROR_SERVICE_REQUEST_TIMEOUT ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  EVENTLOG_ERROR_TYPE ; 
 int /*<<< orphan*/  EVENTLOG_WARNING_TYPE ; 
 int /*<<< orphan*/  EVENT_CONNECTION_TIMEOUT ; 
 int /*<<< orphan*/  EVENT_READFILE_TIMEOUT ; 
 int /*<<< orphan*/  EVENT_SERVICE_DIFFERENT_PID_CONNECTED ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ PipeTimeout ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static DWORD
FUNC11(PSERVICE Service)
{
    DWORD dwRead = 0;
    DWORD dwProcessId = 0;
    DWORD dwError = ERROR_SUCCESS;
    BOOL bResult;
    OVERLAPPED Overlapped = {0};
#if 0
    LPCWSTR lpLogStrings[3];
    WCHAR szBuffer1[20];
    WCHAR szBuffer2[20];
#endif

    FUNC2("ScmWaitForServiceConnect()\n");

    Overlapped.hEvent = (HANDLE)NULL;

    bResult = FUNC1(Service->lpImage->hControlPipe,
                               &Overlapped);
    if (bResult == FALSE)
    {
        FUNC2("ConnectNamedPipe() returned FALSE\n");

        dwError = FUNC4();
        if (dwError == ERROR_IO_PENDING)
        {
            FUNC2("dwError: ERROR_IO_PENDING\n");

            dwError = FUNC9(Service->lpImage->hControlPipe,
                                          PipeTimeout);
            FUNC2("WaitForSingleObject() returned %lu\n", dwError);

            if (dwError == WAIT_TIMEOUT)
            {
                FUNC2("WaitForSingleObject() returned WAIT_TIMEOUT\n");

                bResult = FUNC0(Service->lpImage->hControlPipe);
                if (bResult == FALSE)
                {
                    FUNC3("CancelIo() failed (Error: %lu)\n", FUNC4());
                }

#if 0
                _ultow(PipeTimeout, szBuffer1, 10);
                lpLogStrings[0] = Service->lpDisplayName;
                lpLogStrings[1] = szBuffer1;

                ScmLogEvent(EVENT_CONNECTION_TIMEOUT,
                            EVENTLOG_ERROR_TYPE,
                            2,
                            lpLogStrings);
#endif
                FUNC3("Log EVENT_CONNECTION_TIMEOUT by %S\n", Service->lpDisplayName);

                return ERROR_SERVICE_REQUEST_TIMEOUT;
            }
            else if (dwError == WAIT_OBJECT_0)
            {
                bResult = FUNC5(Service->lpImage->hControlPipe,
                                              &Overlapped,
                                              &dwRead,
                                              TRUE);
                if (bResult == FALSE)
                {
                    dwError = FUNC4();
                    FUNC3("GetOverlappedResult failed (Error %lu)\n", dwError);

                    return dwError;
                }
            }
        }
        else if (dwError != ERROR_PIPE_CONNECTED)
        {
            FUNC3("ConnectNamedPipe failed (Error %lu)\n", dwError);
            return dwError;
        }
    }

    FUNC2("Control pipe connected!\n");

    Overlapped.hEvent = (HANDLE) NULL;

    /* Read the process id from pipe */
    bResult = FUNC6(Service->lpImage->hControlPipe,
                       (LPVOID)&dwProcessId,
                       sizeof(DWORD),
                       &dwRead,
                       &Overlapped);
    if (bResult == FALSE)
    {
        FUNC2("ReadFile() returned FALSE\n");

        dwError = FUNC4();
        if (dwError == ERROR_IO_PENDING)
        {
            FUNC2("dwError: ERROR_IO_PENDING\n");

            dwError = FUNC9(Service->lpImage->hControlPipe,
                                          PipeTimeout);
            if (dwError == WAIT_TIMEOUT)
            {
                FUNC2("WaitForSingleObject() returned WAIT_TIMEOUT\n");

                bResult = FUNC0(Service->lpImage->hControlPipe);
                if (bResult == FALSE)
                {
                    FUNC3("CancelIo() failed (Error: %lu)\n", FUNC4());
                }

#if 0
                _ultow(PipeTimeout, szBuffer1, 10);
                lpLogStrings[0] = szBuffer1;

                ScmLogEvent(EVENT_READFILE_TIMEOUT,
                            EVENTLOG_ERROR_TYPE,
                            1,
                            lpLogStrings);
#endif
                FUNC3("Log EVENT_READFILE_TIMEOUT by %S\n", Service->lpDisplayName);

                return ERROR_SERVICE_REQUEST_TIMEOUT;
            }
            else if (dwError == WAIT_OBJECT_0)
            {
                FUNC2("WaitForSingleObject() returned WAIT_OBJECT_0\n");

                FUNC2("Process Id: %lu\n", dwProcessId);

                bResult = FUNC5(Service->lpImage->hControlPipe,
                                              &Overlapped,
                                              &dwRead,
                                              TRUE);
                if (bResult == FALSE)
                {
                    dwError = FUNC4();
                    FUNC3("GetOverlappedResult() failed (Error %lu)\n", dwError);

                    return dwError;
                }
            }
            else
            {
                FUNC3("WaitForSingleObject() returned %lu\n", dwError);
            }
        }
        else
        {
            FUNC3("ReadFile() failed (Error %lu)\n", dwError);
            return dwError;
        }
    }

    if ((FUNC7(Service->lpImage) == FALSE)&&
        (dwProcessId != Service->lpImage->dwProcessId))
    {
#if 0
        _ultow(Service->lpImage->dwProcessId, szBuffer1, 10);
        _ultow(dwProcessId, szBuffer2, 10);

        lpLogStrings[0] = Service->lpDisplayName;
        lpLogStrings[1] = szBuffer1;
        lpLogStrings[2] = szBuffer2;

        ScmLogEvent(EVENT_SERVICE_DIFFERENT_PID_CONNECTED,
                    EVENTLOG_WARNING_TYPE,
                    3,
                    lpLogStrings);
#endif

        FUNC3("Log EVENT_SERVICE_DIFFERENT_PID_CONNECTED by %S\n", Service->lpDisplayName);
    }

    FUNC2("ScmWaitForServiceConnect() done\n");

    return ERROR_SUCCESS;
}