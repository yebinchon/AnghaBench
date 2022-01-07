
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TCHAR ;
typedef int RDebugPid ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 int FALSE ;
 int PROCESS_QUERY_INFORMATION ;
 int PROCESS_VM_READ ;
 scalar_t__ ProcessIdToSessionId (int,int*) ;
 char* __resolve_path (scalar_t__,int *) ;
 int free (char*) ;
 int * r_debug_pid_new (char*,int,int,char,int ) ;
 char* r_sys_conv_win_to_utf8 (int const*) ;
 scalar_t__ w32_OpenProcess (int,int ,int) ;

__attribute__((used)) static RDebugPid *__build_debug_pid(int pid, HANDLE ph, const TCHAR* name) {
 char *path = ((void*)0);
 int uid = -1;
 if (!ph) {
  ph = w32_OpenProcess (PROCESS_QUERY_INFORMATION | PROCESS_VM_READ, FALSE, pid);
  if (ph) {
   path = __resolve_path (ph, ((void*)0));
   DWORD sid;
   if (ProcessIdToSessionId (pid, &sid)) {
    uid = sid;
   }
   CloseHandle (ph);
  } else {
   return ((void*)0);
  }
 } else {
  path = __resolve_path (ph, ((void*)0));
  DWORD sid;
  if (ProcessIdToSessionId (pid, &sid)) {
   uid = sid;
  }
 }
 if (!path) {
  path = r_sys_conv_win_to_utf8 (name);
 }

 RDebugPid *ret = r_debug_pid_new (path, pid, uid, 's', 0);
 free (path);
 return ret;
}
