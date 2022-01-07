
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int previouspriv ;
struct TYPE_6__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_5__ {int Luid; int Attributes; } ;
typedef TYPE_2__ TOKEN_PRIVILEGES ;
typedef int LPSYSTEMTIME ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ AdjustTokenPrivileges (int ,int,TYPE_2__*,int,TYPE_2__*,int *) ;
 int CloseHandle (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 scalar_t__ LookupPrivilegeValueW (int *,int ,int *) ;
 scalar_t__ OpenProcessToken (int ,int,int *) ;
 int SE_PRIVILEGE_ENABLED ;
 int SE_SYSTEMTIME_NAME ;
 scalar_t__ SetLocalTime (int ) ;
 int TOKEN_ADJUST_PRIVILEGES ;
 int TOKEN_QUERY ;

BOOL
SystemSetLocalTime(LPSYSTEMTIME lpSystemTime)
{
    HANDLE hToken;
    DWORD PrevSize;
    TOKEN_PRIVILEGES priv, previouspriv;
    BOOL Ret = FALSE;





    if (OpenProcessToken(GetCurrentProcess(),
                         TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY,
                         &hToken))
    {
        priv.PrivilegeCount = 1;
        priv.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;

        if (LookupPrivilegeValueW(((void*)0),
                                  SE_SYSTEMTIME_NAME,
                                  &priv.Privileges[0].Luid))
        {
            if (AdjustTokenPrivileges(hToken,
                                      FALSE,
                                      &priv,
                                      sizeof(previouspriv),
                                      &previouspriv,
                                      &PrevSize) &&
                GetLastError() == ERROR_SUCCESS)
            {




                Ret = SetLocalTime(lpSystemTime) &&
                      SetLocalTime(lpSystemTime);




                if (previouspriv.PrivilegeCount > 0)
                {
                    AdjustTokenPrivileges(hToken,
                                          FALSE,
                                          &previouspriv,
                                          0,
                                          ((void*)0),
                                          0);
                }
            }
        }
        CloseHandle(hToken);
    }

    return Ret;
}
