
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
typedef scalar_t__ HANDLE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ AdjustTokenPrivileges (scalar_t__,scalar_t__,TYPE_2__*,int ,int *,int *) ;
 int CloseHandle (scalar_t__) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_NOT_ALL_ASSIGNED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ LookupPrivilegeValueW (int *,int ,int *) ;
 scalar_t__ OpenProcessToken (int ,int ,scalar_t__*) ;
 int SE_PRIVILEGE_ENABLED ;
 int TOKEN_ADJUST_PRIVILEGES ;
 scalar_t__ TRUE ;
 int output_error (scalar_t__) ;

__attribute__((used)) static BOOL set_privilege(LPCWSTR privilegeName, BOOL enabled)
{
    HANDLE hToken = INVALID_HANDLE_VALUE;
    TOKEN_PRIVILEGES tp;
    DWORD error = ERROR_SUCCESS;

    if (OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES, &hToken))
    {
        tp.PrivilegeCount = 1;
        tp.Privileges[0].Attributes = (enabled ? SE_PRIVILEGE_ENABLED : 0);

        if (LookupPrivilegeValueW(((void*)0), privilegeName, &tp.Privileges[0].Luid))
        {
            if (AdjustTokenPrivileges(hToken, FALSE, &tp, 0, ((void*)0), ((void*)0)))
            {
                if (GetLastError() == ERROR_NOT_ALL_ASSIGNED)
                {
                    error = ERROR_NOT_ALL_ASSIGNED;
                    goto fail;
                }
            }
            else
            {
                error = GetLastError();
                goto fail;
            }
        }
        else
        {
            error = GetLastError();
            goto fail;
        }
    }
    else
    {
        error = GetLastError();
        goto fail;
    }

    CloseHandle(hToken);
    return TRUE;

fail:


    if (error == ERROR_SUCCESS) error = ERROR_ACCESS_DENIED;
    if (hToken != INVALID_HANDLE_VALUE) CloseHandle(hToken);

    output_error(error);
    return FALSE;
}
