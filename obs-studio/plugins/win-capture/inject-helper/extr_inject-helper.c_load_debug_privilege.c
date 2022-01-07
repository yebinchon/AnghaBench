
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tp ;
struct TYPE_5__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_4__ {int Attributes; int Luid; } ;
typedef TYPE_2__ TOKEN_PRIVILEGES ;
typedef int LUID ;
typedef int HANDLE ;
typedef int DWORD ;


 int AdjustTokenPrivileges (int ,int,TYPE_2__*,int,int *,int *) ;
 int CloseHandle (int ) ;
 int GetCurrentProcess () ;
 int LookupPrivilegeValue (int *,int ,int *) ;
 int OpenProcessToken (int ,int const,int *) ;
 int SE_DEBUG_NAME ;
 int SE_PRIVILEGE_ENABLED ;
 int TOKEN_ADJUST_PRIVILEGES ;
 int TOKEN_QUERY ;

__attribute__((used)) static void load_debug_privilege(void)
{
 const DWORD flags = TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY;
 TOKEN_PRIVILEGES tp;
 HANDLE token;
 LUID val;

 if (!OpenProcessToken(GetCurrentProcess(), flags, &token)) {
  return;
 }

 if (!!LookupPrivilegeValue(((void*)0), SE_DEBUG_NAME, &val)) {
  tp.PrivilegeCount = 1;
  tp.Privileges[0].Luid = val;
  tp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;

  AdjustTokenPrivileges(token, 0, &tp, sizeof(tp), ((void*)0),
          ((void*)0));
 }

 CloseHandle(token);
}
