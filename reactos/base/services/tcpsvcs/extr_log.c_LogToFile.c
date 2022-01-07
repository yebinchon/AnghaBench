
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
typedef int UINT ;
struct TYPE_4__ {int hEvent; } ;
typedef int TCHAR ;
typedef int SIZE_T ;
typedef int * LPWSTR ;
typedef int * LPCWSTR ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_IO_PENDING ;
 int EXCEPTION_INT_OVERFLOW ;
 int ExitProcess (int) ;
 scalar_t__ FALSE ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FormatMessageW (int,int *,int,int ,int *,int ,int *) ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetOverlappedResult (int ,TYPE_1__*,int*,scalar_t__) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int INFINITE ;
 int LANG_NEUTRAL ;
 int LOG_ERROR ;
 int LOG_EVENTLOG ;
 int LocalFree (int *) ;
 int LogToEventLog (char*,scalar_t__,int ,int) ;
 int MAKELANGID (int ,int ) ;
 int MAXDWORD ;
 int RaiseException (int ,int ,int ,int *) ;
 int SUBLANG_DEFAULT ;

 int WaitForSingleObject (int ,int ) ;
 scalar_t__ WriteFile (int ,int *,int,int*,TYPE_1__*) ;
 int _snwprintf (int *,int,char*,int *,...) ;
 int hLogFile ;
 TYPE_1__ olWrite ;
 int wcslen (int *) ;

__attribute__((used)) static VOID
LogToFile(LPCWSTR lpMsg,
          DWORD errNum,
          DWORD exitCode,
          UINT flags)
{
    LPWSTR lpFullMsg = ((void*)0);
    SIZE_T msgLen;

    msgLen = wcslen(lpMsg) + 1;

    if (flags & LOG_ERROR)
    {
        LPWSTR lpSysMsg;
        DWORD eMsgLen;

        eMsgLen = FormatMessageW(FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_FROM_SYSTEM,
                                 ((void*)0),
                                 errNum,
                                 MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                                 (LPWSTR)&lpSysMsg,
                                 0,
                                 ((void*)0));

        msgLen = msgLen + eMsgLen + 40;

        lpFullMsg = HeapAlloc(GetProcessHeap(),
                              0,
                              msgLen * sizeof(TCHAR));
        if (lpFullMsg)
        {
            _snwprintf(lpFullMsg,
                       msgLen,
                       L"%s : %s\tErrNum = %lu ExitCode = %lu\r\n",
                       lpMsg,
                       lpSysMsg,
                       errNum,
                       exitCode);
        }

        LocalFree(lpSysMsg);

    }
    else
    {
        msgLen += 2;

        lpFullMsg = HeapAlloc(GetProcessHeap(),
                              0,
                              msgLen * sizeof(TCHAR));
        if (lpFullMsg)
        {
            _snwprintf(lpFullMsg,
                       msgLen,
                      L"%s\r\n",
                      lpMsg);
        }
    }


    msgLen = wcslen(lpFullMsg);
    if (msgLen > (MAXDWORD / sizeof(WCHAR)))
    {
        RaiseException(EXCEPTION_INT_OVERFLOW, 0, 0, ((void*)0));
    }

    if (lpFullMsg)
    {
        DWORD bytesWritten;
        DWORD dwRet;
        BOOL bRet;

        bRet = WriteFile(hLogFile,
                         lpFullMsg,
                         (DWORD)msgLen * sizeof(WCHAR),
                         &bytesWritten,
                         &olWrite);
        if (!bRet)
        {
            if (GetLastError() != ERROR_IO_PENDING)
            {
                bRet = FALSE;
            }
            else
            {

                dwRet = WaitForSingleObject(olWrite.hEvent, INFINITE);

                 switch (dwRet)
                 {

                    case 128:
                    {
                         bRet = GetOverlappedResult(hLogFile,
                                                    &olWrite,
                                                    &bytesWritten,
                                                    FALSE);
                         break;
                    }

                    default:



                         bRet = FALSE;
                         break;
                 }
            }
        }

        if (!bRet || bytesWritten == 0)
        {
            LogToEventLog(L"Failed to write to log file",
                          GetLastError(),
                          0,
                          LOG_EVENTLOG | LOG_ERROR);
        }

        HeapFree(GetProcessHeap(),
                 0,
                 lpFullMsg);
    }

    if (exitCode > 0)
        ExitProcess(exitCode);
}
