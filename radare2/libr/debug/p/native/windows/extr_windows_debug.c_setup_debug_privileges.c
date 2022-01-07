
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_4__ {int Attributes; int Luid; } ;
typedef TYPE_2__ TOKEN_PRIVILEGES ;
typedef int LUID ;
typedef int HANDLE ;


 scalar_t__ AdjustTokenPrivileges (int ,int ,TYPE_2__*,int ,int *,int *) ;
 int CloseHandle (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 scalar_t__ LookupPrivilegeValue (int *,int ,int *) ;
 int OpenProcessToken (int ,int,int *) ;
 int SE_DEBUG_NAME ;
 int SE_PRIVILEGE_ENABLED ;
 int TOKEN_ADJUST_PRIVILEGES ;
 int TOKEN_QUERY ;

bool setup_debug_privileges(bool b) {
 HANDLE tok;
 if (!OpenProcessToken (GetCurrentProcess (), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &tok)) {
  return 0;
 }
 bool ret = 0;
 LUID luid;
 if (LookupPrivilegeValue (((void*)0), SE_DEBUG_NAME, &luid)) {
  TOKEN_PRIVILEGES tp;
  tp.PrivilegeCount = 1;
  tp.Privileges[0].Luid = luid;
  tp.Privileges[0].Attributes = b ? SE_PRIVILEGE_ENABLED : 0;
  if (AdjustTokenPrivileges (tok, FALSE, &tp, 0, ((void*)0), ((void*)0))) {

   ret = GetLastError () == ERROR_SUCCESS;
  }
 }
 CloseHandle (tok);
 return ret;
}
