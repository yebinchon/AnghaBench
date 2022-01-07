
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_4__ {int Luid; int Attributes; } ;
typedef TYPE_2__ TOKEN_PRIVILEGES ;
typedef int LPCWSTR ;
typedef int * HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ AdjustTokenPrivileges (int *,int ,TYPE_2__*,int ,int *,int *) ;
 int CloseHandle (int *) ;
 int DisplayError (scalar_t__) ;
 scalar_t__ ERROR_NOT_ALL_ASSIGNED ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 scalar_t__ LookupPrivilegeValueW (int *,int ,int *) ;
 scalar_t__ OpenProcessToken (int ,int ,int **) ;
 int SE_PRIVILEGE_ENABLED ;
 int TOKEN_ADJUST_PRIVILEGES ;

__attribute__((used)) static DWORD
EnablePrivilege(LPCWSTR lpszPrivilegeName, BOOL bEnablePrivilege)
{
    DWORD dwRet = ERROR_SUCCESS;
    HANDLE hToken = ((void*)0);

    if (OpenProcessToken(GetCurrentProcess(),
                         TOKEN_ADJUST_PRIVILEGES,
                         &hToken))
    {
        TOKEN_PRIVILEGES tp;

        tp.PrivilegeCount = 1;
        tp.Privileges[0].Attributes = (bEnablePrivilege ? SE_PRIVILEGE_ENABLED : 0);

        if (LookupPrivilegeValueW(((void*)0),
                                  lpszPrivilegeName,
                                  &tp.Privileges[0].Luid))
        {
            if (AdjustTokenPrivileges(hToken, FALSE, &tp, 0, ((void*)0), ((void*)0)))
            {
                if (GetLastError() == ERROR_NOT_ALL_ASSIGNED)
                    dwRet = ERROR_NOT_ALL_ASSIGNED;
            }
            else
            {
                dwRet = GetLastError();
            }
        }
        else
        {
            dwRet = GetLastError();
        }

        CloseHandle(hToken);
    }
    else
    {
        dwRet = GetLastError();
    }


    if (dwRet != ERROR_SUCCESS) DisplayError(dwRet);

    return dwRet;
}
