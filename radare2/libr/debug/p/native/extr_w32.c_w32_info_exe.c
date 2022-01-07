
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pid; } ;
struct TYPE_5__ {int exe; } ;
typedef TYPE_1__ RDebugInfo ;
typedef TYPE_2__ RDebug ;
typedef char* LPTSTR ;
typedef scalar_t__ HANDLE ;
typedef size_t DWORD ;


 int CloseHandle (scalar_t__) ;
 int FALSE ;
 size_t MAX_PATH ;
 scalar_t__ OpenProcess (int ,int ,int ) ;
 int PROCESS_QUERY_INFORMATION ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int perror (char*) ;
 int r_sys_conv_win_to_utf8 (char*) ;
 int r_sys_perror (char*) ;
 scalar_t__ w32_QueryFullProcessImageName (scalar_t__,int ,char*,size_t*) ;

__attribute__((used)) static void w32_info_exe(RDebug *dbg, RDebugInfo *rdi) {
 LPTSTR path = ((void*)0);
 HANDLE h_proc;
 DWORD len;

 if (!w32_QueryFullProcessImageName) {
  return;
 }
 h_proc = OpenProcess (PROCESS_QUERY_INFORMATION, FALSE, dbg->pid);
 if (!h_proc) {
  r_sys_perror ("w32_info_exe/OpenProcess");
  goto err_w32_info_exe;
 }
 path = (LPTSTR)malloc (MAX_PATH + 1);
 if (!path) {
  perror ("w32_info_exe/malloc path");
  goto err_w32_info_exe;
 }
 len = MAX_PATH;
 if (w32_QueryFullProcessImageName (h_proc, 0, path, &len)) {
  path[len] = '\0';
  rdi->exe = r_sys_conv_win_to_utf8 (path);
 } else {
  r_sys_perror ("w32_info_exe/QueryFullProcessImageName");
 }
err_w32_info_exe:
 if (h_proc) {
  CloseHandle (h_proc);
 }
 free (path);
}
