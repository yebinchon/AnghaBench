
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwSize; int th32OwnerProcessID; int th32ThreadID; } ;
typedef TYPE_1__ THREADENTRY32 ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateToolhelp32Snapshot (int ,int) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int TH32CS_SNAPTHREAD ;
 int THREAD_ALL_ACCESS ;
 int Thread32First (scalar_t__,TYPE_1__*) ;
 scalar_t__ Thread32Next (scalar_t__,TYPE_1__*) ;
 int eprintf (char*,...) ;
 int r_sys_perror (char*) ;
 scalar_t__ w32_OpenThread (int ,int ,int) ;

int w32_first_thread(int pid) {
 HANDLE th;
 HANDLE thid;
 THREADENTRY32 te32;
 te32.dwSize = sizeof (THREADENTRY32);

 if (!w32_OpenThread) {
  eprintf("w32_thread_list: no w32_OpenThread?\n");
  return -1;
 }
 th = CreateToolhelp32Snapshot (TH32CS_SNAPTHREAD, pid);
 if (th == INVALID_HANDLE_VALUE) {
  eprintf ("w32_thread_list: invalid handle\n");
  return -1;
 }
 if (!Thread32First (th, &te32)) {
  CloseHandle (th);
  eprintf ("w32_thread_list: no thread first\n");
  return -1;
 }
 do {

  if (te32.th32OwnerProcessID == pid) {
   thid = w32_OpenThread (THREAD_ALL_ACCESS, 0, te32.th32ThreadID);
   if (!thid) {
    r_sys_perror ("w32_first_thread/OpenThread");
    goto err_load_th;
   }
   CloseHandle (th);
   return te32.th32ThreadID;
  }
 } while (Thread32Next (th, &te32));
err_load_th:
 eprintf ("Could not find an active thread for pid %d\n", pid);
 CloseHandle (th);
 return pid;
}
