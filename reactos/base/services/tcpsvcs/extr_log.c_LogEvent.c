
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int UINT ;
typedef int LPCWSTR ;
typedef int DWORD ;


 int LOG_ERROR ;
 int LOG_EVENTLOG ;
 int LOG_FILE ;
 int LogToEventLog (int ,int ,int ,int) ;
 int LogToFile (int ,int ,int ,int) ;

VOID
LogEvent(LPCWSTR lpMsg,
         DWORD errNum,
         DWORD exitCode,
         UINT flags)
{




    if (flags & LOG_EVENTLOG)
        LogToEventLog(lpMsg, errNum, exitCode, flags);
}
