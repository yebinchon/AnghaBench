
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int core; scalar_t__ (* cfggeti ) (int ,char*) ;} ;
struct TYPE_10__ {TYPE_1__ corebind; TYPE_3__* user; } ;
struct TYPE_8__ {int hProcess; int dwProcessId; } ;
struct TYPE_9__ {TYPE_2__ pi; } ;
typedef TYPE_3__ RIOW32Dbg ;
typedef TYPE_4__ RDebug ;


 int breaked ;
 int eprintf (char*) ;
 int r_sys_perror (char*) ;
 scalar_t__ stub1 (int ,char*) ;
 int w32_DebugBreakProcess (int ) ;
 int w32_select (TYPE_4__*,int ,int ) ;

void w32_break_process(RDebug *dbg) {
 RIOW32Dbg *rio = dbg->user;
 if (dbg->corebind.cfggeti (dbg->corebind.core, "dbg.threads")) {
  w32_select (dbg, rio->pi.dwProcessId, 0);
 } else {
  if (!w32_DebugBreakProcess (rio->pi.hProcess)) {
   r_sys_perror ("w32_break_process/DebugBreakProcess");
   eprintf("Could not interrupt program, attempt to press Ctrl-C in the program's console.\n");
  }
 }

 breaked = 1;
}
