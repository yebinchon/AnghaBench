
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int PrivilegeCount; TYPE_1__* Privileges; } ;
struct TYPE_4__ {scalar_t__ Attributes; int Luid; } ;
typedef TYPE_2__ TOKEN_PRIVILEGES ;
typedef int LUID ;
typedef int * HANDLE ;


 scalar_t__ AdjustTokenPrivileges (int *,scalar_t__,TYPE_2__*,int ,int *,int *) ;
 int CloseHandle (int *) ;
 scalar_t__ FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 int LookupPrivilegeValue (int *,int ,int *) ;
 int OpenProcessToken (int ,int ,int **) ;
 int SE_DEBUG_NAME ;
 scalar_t__ SE_PRIVILEGE_ENABLED ;
 int TOKEN_ADJUST_PRIVILEGES ;
 int eprintf (char*,int) ;

__attribute__((used)) static bool w32dbg_SeDebugPrivilege() {




 bool ret = 1;
 TOKEN_PRIVILEGES tokenPriv;
 HANDLE hToken = ((void*)0);
 LUID luidDebug;
 if (!OpenProcessToken (GetCurrentProcess (),
   TOKEN_ADJUST_PRIVILEGES, &hToken))
  return 0;

 if (!LookupPrivilegeValue (((void*)0), SE_DEBUG_NAME, &luidDebug)) {
  CloseHandle (hToken);
  return 0;
 }

 tokenPriv.PrivilegeCount = 1;
 tokenPriv.Privileges[0].Luid = luidDebug;
 tokenPriv.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;
 if (AdjustTokenPrivileges (hToken, FALSE, &tokenPriv, 0, ((void*)0), ((void*)0)) != FALSE) {
  if (tokenPriv.Privileges[0].Attributes == SE_PRIVILEGE_ENABLED) {

  }



 } else {
  eprintf ("Failed to change token privileges 0x%x\n", (int)GetLastError());
  ret = 0;
 }
 CloseHandle (hToken);
 return ret;
}
