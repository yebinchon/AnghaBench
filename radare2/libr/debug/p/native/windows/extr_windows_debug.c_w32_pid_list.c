
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pe ;
struct TYPE_11__ {int dwSize; int th32ProcessID; int th32ParentProcessID; int szExeFile; } ;
struct TYPE_10__ {TYPE_2__* user; } ;
struct TYPE_8__ {int * hProcess; } ;
struct TYPE_9__ {TYPE_1__ pi; } ;
typedef int RList ;
typedef TYPE_2__ RIOW32Dbg ;
typedef int RDebugPid ;
typedef TYPE_3__ RDebug ;
typedef TYPE_4__ PROCESSENTRY32 ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ Process32First (scalar_t__,TYPE_4__*) ;
 scalar_t__ Process32Next (scalar_t__,TYPE_4__*) ;
 int TH32CS_SNAPPROCESS ;
 int * __build_debug_pid (int,int *,int ) ;
 int eprintf (char*,int) ;
 int r_list_append (int *,int *) ;
 int r_sys_perror (char*) ;
 scalar_t__ w32_CreateToolhelp32Snapshot (int ,int) ;

RList *w32_pid_list(RDebug *dbg, int pid, RList *list) {
 HANDLE sh = w32_CreateToolhelp32Snapshot (TH32CS_SNAPPROCESS, pid);
 if (sh == INVALID_HANDLE_VALUE) {
  r_sys_perror ("w32_pid_list/CreateToolhelp32Snapshot");
  return list;
 }
 PROCESSENTRY32 pe;
 pe.dwSize = sizeof (pe);
 if (Process32First (sh, &pe)) {
  RIOW32Dbg *rio = dbg->user;
  bool all = pid == 0, b = 0;
  do {
   if (all || pe.th32ProcessID == pid || (b = pe.th32ParentProcessID == pid)) {

    RDebugPid *dbg_pid = __build_debug_pid (pe.th32ProcessID, b ? rio->pi.hProcess : ((void*)0), pe.szExeFile);
    if (dbg_pid) {
     r_list_append (list, dbg_pid);
    }





   }
  } while (Process32Next (sh, &pe));
 } else {
  r_sys_perror ("w32_pid_list/Process32First");
 }
 CloseHandle (sh);
 return list;
}
