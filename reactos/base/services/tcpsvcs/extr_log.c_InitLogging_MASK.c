#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
struct TYPE_4__ {int Offset; int OffsetHigh; scalar_t__ hEvent; } ;
typedef  int /*<<< orphan*/  OVERLAPPED ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_IO_PENDING ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int LOG_ERROR ; 
 int LOG_EVENTLOG ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  hLogFile ; 
 TYPE_1__ olWrite ; 
 int /*<<< orphan*/  szLogFileName ; 

BOOL
FUNC11()
{
#ifdef DEBUG
    BOOL bRet = FALSE;

    if (!GetEnvironmentVariableW(L"SystemDrive", szLogFileName, ARRAYSIZE(szLogFileName)))
    {
        StringCchCopyW(szLogFileName, ARRAYSIZE(szLogFileName), L"C:");
    }
    StringCchCatW(szLogFileName, ARRAYSIZE(szLogFileName), L"\\tcpsvcs_log.log");

    ZeroMemory(&olWrite, sizeof(OVERLAPPED));
    olWrite.Offset = 0xFFFFFFFF;
    olWrite.OffsetHigh = 0xFFFFFFFF;
    olWrite.hEvent = CreateEvent(NULL, TRUE, FALSE, NULL);
    if (olWrite.hEvent)
    {
        DeleteFileW(szLogFileName);

        if (OpenLogFile())
        {
            WCHAR wcBom = 0xFEFF;
            DWORD bytesWritten;

            bRet = WriteFile(hLogFile,
                             &wcBom,
                             sizeof(WCHAR),
                             &bytesWritten,
                             &olWrite);
            if (!bRet)
            {
                if (GetLastError() != ERROR_IO_PENDING)
                {
                    LogToEventLog(L"Failed to write to log file",
                                  GetLastError(),
                                  0,
                                  LOG_EVENTLOG | LOG_ERROR);
                }
                else
                {
                    bRet = TRUE;
                }
            }
        }
    }

    return bRet;
#else
    return TRUE;
#endif
}