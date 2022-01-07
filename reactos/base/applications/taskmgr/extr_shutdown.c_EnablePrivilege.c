
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_4__ {int Attributes; int Luid; } ;
typedef TYPE_2__ TOKEN_PRIVILEGES ;
typedef int LPCWSTR ;
typedef int HANDLE ;
typedef scalar_t__ BOOL ;


 scalar_t__ AdjustTokenPrivileges (int ,int ,TYPE_2__*,int ,int *,int *) ;
 int CloseHandle (int ) ;
 int FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ LookupPrivilegeValueW (int *,int ,int *) ;
 scalar_t__ OpenProcessToken (int ,int ,int *) ;
 int SE_PRIVILEGE_ENABLED ;
 int TOKEN_ADJUST_PRIVILEGES ;

__attribute__((used)) static BOOL
EnablePrivilege(LPCWSTR lpszPrivilegeName, BOOL bEnablePrivilege)
{
    BOOL Success;
    HANDLE hToken;
    TOKEN_PRIVILEGES tp;

    Success = OpenProcessToken(GetCurrentProcess(),
                               TOKEN_ADJUST_PRIVILEGES,
                               &hToken);
    if (!Success) return Success;

    Success = LookupPrivilegeValueW(((void*)0),
                                    lpszPrivilegeName,
                                    &tp.Privileges[0].Luid);
    if (!Success) goto Quit;

    tp.PrivilegeCount = 1;
    tp.Privileges[0].Attributes = (bEnablePrivilege ? SE_PRIVILEGE_ENABLED : 0);

    Success = AdjustTokenPrivileges(hToken, FALSE, &tp, 0, ((void*)0), ((void*)0));

Quit:
    CloseHandle(hToken);
    return Success;
}
