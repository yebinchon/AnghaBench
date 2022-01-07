
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwSize; int th32ProcessID; int th32ParentProcessID; } ;
typedef int RList ;
typedef int RDebugPid ;
typedef TYPE_1__ PROCESSENTRY32 ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateToolhelp32Snapshot (int ,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int Process32First (scalar_t__,TYPE_1__*) ;
 scalar_t__ Process32Next (scalar_t__,TYPE_1__*) ;
 int TH32CS_SNAPPROCESS ;
 int * build_debug_pid (TYPE_1__*) ;
 int r_list_append (int *,int *) ;
 int r_sys_perror (char*) ;

RList *w32_pids(int pid, RList *list) {
 HANDLE process_snapshot;
 PROCESSENTRY32 pe;
 pe.dwSize = sizeof (PROCESSENTRY32);
 bool show_all_pids = pid == 0;

 process_snapshot = CreateToolhelp32Snapshot (TH32CS_SNAPPROCESS, pid);
 if (process_snapshot == INVALID_HANDLE_VALUE) {
  r_sys_perror ("w32_pids/CreateToolhelp32Snapshot");
  return list;
 }
 if (!Process32First (process_snapshot, &pe)) {
  r_sys_perror ("w32_pids/Process32First");
  CloseHandle (process_snapshot);
  return list;
 }
 do {
  if (show_all_pids ||
   pe.th32ProcessID == pid ||
   pe.th32ParentProcessID == pid) {

   RDebugPid *debug_pid = build_debug_pid (&pe);
   if (debug_pid) {
    r_list_append (list, debug_pid);
   }
  }
 } while (Process32Next (process_snapshot, &pe));

 CloseHandle (process_snapshot);
 return list;
}
