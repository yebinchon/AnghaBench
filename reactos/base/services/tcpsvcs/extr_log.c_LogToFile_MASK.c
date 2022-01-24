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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
typedef  int UINT ;
struct TYPE_4__ {int /*<<< orphan*/  hEvent; } ;
typedef  int /*<<< orphan*/  TCHAR ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_IO_PENDING ; 
 int /*<<< orphan*/  EXCEPTION_INT_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FALSE ; 
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FUNC1 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int LOG_ERROR ; 
 int LOG_EVENTLOG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MAXDWORD ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
#define  WAIT_OBJECT_0 128 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  hLogFile ; 
 TYPE_1__ olWrite ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static VOID
FUNC15(LPCWSTR lpMsg,
          DWORD errNum,
          DWORD exitCode,
          UINT flags)
{
    LPWSTR lpFullMsg = NULL;
    SIZE_T msgLen;

    msgLen = FUNC14(lpMsg) + 1;

    if (flags & LOG_ERROR)
    {
        LPWSTR lpSysMsg;
        DWORD eMsgLen;

        eMsgLen = FUNC1(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM,
                                 NULL,
                                 errNum,
                                 FUNC9(LANG_NEUTRAL, SUBLANG_DEFAULT),
                                 (LPWSTR)&lpSysMsg,
                                 0,
                                 NULL);

        msgLen = msgLen + eMsgLen + 40;

        lpFullMsg = FUNC5(FUNC4(),
                              0,
                              msgLen * sizeof(TCHAR));
        if (lpFullMsg)
        {
            FUNC13(lpFullMsg,
                       msgLen,
                       L"%s : %s\tErrNum = %lu ExitCode = %lu\r\n",
                       lpMsg,
                       lpSysMsg,
                       errNum,
                       exitCode);
        }

        FUNC7(lpSysMsg);

    }
    else
    {
        msgLen += 2;

        lpFullMsg = FUNC5(FUNC4(),
                              0,
                              msgLen * sizeof(TCHAR));
        if (lpFullMsg)
        {
            FUNC13(lpFullMsg,
                       msgLen,
                      L"%s\r\n",
                      lpMsg);
        }
    }

    /* Make sure the length in bytes doesn't overflow a DWORD */
    msgLen = FUNC14(lpFullMsg);
    if (msgLen > (MAXDWORD / sizeof(WCHAR)))
    {
        FUNC10(EXCEPTION_INT_OVERFLOW, 0, 0, NULL);
    }

    if (lpFullMsg)
    {
        DWORD bytesWritten;
        DWORD dwRet;
        BOOL bRet;

        bRet = FUNC12(hLogFile,
                         lpFullMsg,
                         (DWORD)msgLen * sizeof(WCHAR),
                         &bytesWritten,
                         &olWrite);
        if (!bRet)
        {
            if (FUNC2() != ERROR_IO_PENDING)
            {
                bRet = FALSE;
            }
            else
            {
                // Write is pending
                dwRet = FUNC11(olWrite.hEvent, INFINITE);

                 switch (dwRet)
                 {
                    // event has been signaled
                    case WAIT_OBJECT_0:
                    {
                         bRet = FUNC3(hLogFile,
                                                    &olWrite,
                                                    &bytesWritten,
                                                    FALSE);
                         break;
                    }

                    default:
                         // An error has occurred in WaitForSingleObject.
                         // This usually indicates a problem with the
                         // OVERLAPPED structure's event handle.
                         bRet = FALSE;
                         break;
                 }
            }
        }

        if (!bRet || bytesWritten == 0)
        {
            FUNC8(L"Failed to write to log file",
                          FUNC2(),
                          0,
                          LOG_EVENTLOG | LOG_ERROR);
        }

        FUNC6(FUNC4(),
                 0,
                 lpFullMsg);
    }

    if (exitCode > 0)
        FUNC0(exitCode);
}