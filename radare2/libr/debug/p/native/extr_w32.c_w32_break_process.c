
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; } ;
typedef TYPE_1__ RDebug ;
typedef scalar_t__ HANDLE ;


 int CloseHandle (scalar_t__) ;
 int FALSE ;
 int PROCESS_ALL_ACCESS ;
 int r_sys_perror (char*) ;
 int w32_DebugBreakProcess (scalar_t__) ;
 scalar_t__ w32_OpenProcess (int ,int ,int ) ;

void w32_break_process(void *d) {
 RDebug *dbg = (RDebug *)d;
 HANDLE h_proc = w32_OpenProcess (PROCESS_ALL_ACCESS, FALSE, dbg->pid);
 if (!h_proc) {
  r_sys_perror ("w32_break_process/w32_OpenProcess");
  goto err_w32_break_process;
 }
 if (!w32_DebugBreakProcess (h_proc)) {
  r_sys_perror ("w32_break_process/w32_DebugBreakProcess");
  goto err_w32_break_process;
 }
err_w32_break_process:
 if (h_proc) {
  CloseHandle (h_proc);
 }
}
