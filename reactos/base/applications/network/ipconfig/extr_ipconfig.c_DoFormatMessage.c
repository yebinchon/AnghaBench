
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ LPVOID ;
typedef int LPTSTR ;
typedef scalar_t__ LONG ;


 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 scalar_t__ FormatMessage (int,int *,scalar_t__,int ,int ,int ,int *) ;
 scalar_t__ GetLastError () ;
 int LANG_NEUTRAL ;
 int LocalFree (scalar_t__) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_DEFAULT ;
 int _T (char*) ;
 int _tprintf (int ,int ) ;

VOID DoFormatMessage(LONG ErrorCode)
{
    LPVOID lpMsgBuf;


    if (ErrorCode == 0)
        ErrorCode = GetLastError();

    if (FormatMessage(FORMAT_MESSAGE_ALLOCATE_BUFFER |
                        FORMAT_MESSAGE_FROM_SYSTEM |
                        FORMAT_MESSAGE_IGNORE_INSERTS,
                      ((void*)0),
                      ErrorCode,
                      MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                      (LPTSTR) &lpMsgBuf,
                      0,
                      ((void*)0)))
    {
        _tprintf(_T("%s"), (LPTSTR)lpMsgBuf);
        LocalFree(lpMsgBuf);
    }
}
