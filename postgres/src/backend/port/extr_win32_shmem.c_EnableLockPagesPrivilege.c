
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


 int AdjustTokenPrivileges (int ,int,TYPE_2__*,int ,int *,int *) ;
 int CloseHandle (int ) ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 scalar_t__ ERROR_NOT_ALL_ASSIGNED ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int GetCurrentProcess () ;
 scalar_t__ GetLastError () ;
 int LookupPrivilegeValue (int *,int ,int *) ;
 int OpenProcessToken (int ,int,int *) ;
 int SE_LOCK_MEMORY_NAME ;
 int SE_PRIVILEGE_ENABLED ;
 int TOKEN_ADJUST_PRIVILEGES ;
 int TOKEN_QUERY ;
 int TRUE ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;

__attribute__((used)) static bool
EnableLockPagesPrivilege(int elevel)
{
 HANDLE hToken;
 TOKEN_PRIVILEGES tp;
 LUID luid;

 if (!OpenProcessToken(GetCurrentProcess(), TOKEN_ADJUST_PRIVILEGES | TOKEN_QUERY, &hToken))
 {
  ereport(elevel,
    (errmsg("could not enable Lock Pages in Memory user right: error code %lu", GetLastError()),
     errdetail("Failed system call was %s.", "OpenProcessToken")));
  return FALSE;
 }

 if (!LookupPrivilegeValue(((void*)0), SE_LOCK_MEMORY_NAME, &luid))
 {
  ereport(elevel,
    (errmsg("could not enable Lock Pages in Memory user right: error code %lu", GetLastError()),
     errdetail("Failed system call was %s.", "LookupPrivilegeValue")));
  CloseHandle(hToken);
  return FALSE;
 }
 tp.PrivilegeCount = 1;
 tp.Privileges[0].Luid = luid;
 tp.Privileges[0].Attributes = SE_PRIVILEGE_ENABLED;

 if (!AdjustTokenPrivileges(hToken, FALSE, &tp, 0, ((void*)0), ((void*)0)))
 {
  ereport(elevel,
    (errmsg("could not enable Lock Pages in Memory user right: error code %lu", GetLastError()),
     errdetail("Failed system call was %s.", "AdjustTokenPrivileges")));
  CloseHandle(hToken);
  return FALSE;
 }

 if (GetLastError() != ERROR_SUCCESS)
 {
  if (GetLastError() == ERROR_NOT_ALL_ASSIGNED)
   ereport(elevel,
     (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
      errmsg("could not enable Lock Pages in Memory user right"),
      errhint("Assign Lock Pages in Memory user right to the Windows user account which runs PostgreSQL.")));
  else
   ereport(elevel,
     (errmsg("could not enable Lock Pages in Memory user right: error code %lu", GetLastError()),
      errdetail("Failed system call was %s.", "AdjustTokenPrivileges")));
  CloseHandle(hToken);
  return FALSE;
 }

 CloseHandle(hToken);

 return TRUE;
}
