
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_debug_info {int features; } ;


 int BP_W ;
 int DAWR_LENGTH_MAX ;
 int PPC_DEBUG_FEATURE_DATA_BP_RANGE ;
 int PTRACE_CONT ;
 int check_success (char*) ;
 int child_pid ;
 int del_hwbreakpoint_addr (int) ;
 scalar_t__ dummy_var ;
 int ptrace (int ,int ,int *,int ) ;
 int set_breakpoint_addr (void*) ;
 int set_hwbreakpoint_addr (void*,int) ;
 int sprintf (char*,char*,char const*,int) ;

__attribute__((used)) static void launch_watchpoints(char *buf, int mode, int len,
          struct ppc_debug_info *dbginfo, bool dawr)
{
 const char *mode_str;
 unsigned long data = (unsigned long)(dummy_var);
 int wh, range;

 data &= ~0x7UL;

 if (mode == BP_W) {
  data |= (1UL << 1);
  mode_str = "write";
 } else {
  data |= (1UL << 0);
  data |= (1UL << 1);
  mode_str = "read";
 }


 data |= (1UL << 2);


 set_breakpoint_addr((void *)data);
 ptrace(PTRACE_CONT, child_pid, ((void*)0), 0);
 sprintf(buf, "Test %s watchpoint with len: %d ", mode_str, len);
 check_success(buf);

 set_breakpoint_addr(((void*)0));

 data = (data & ~7);


 if (!(dbginfo->features & PPC_DEBUG_FEATURE_DATA_BP_RANGE))
  return;
 wh = set_hwbreakpoint_addr((void *)data, 0);
 ptrace(PTRACE_CONT, child_pid, ((void*)0), 0);
 sprintf(buf, "Test %s watchpoint with len: %d ", mode_str, len);
 check_success(buf);

 del_hwbreakpoint_addr(wh);


 range = 8;
 if (dawr)
  range = 512 - ((int)data & (DAWR_LENGTH_MAX - 1));
 wh = set_hwbreakpoint_addr((void *)data, range);
 ptrace(PTRACE_CONT, child_pid, ((void*)0), 0);
 sprintf(buf, "Test %s watchpoint with len: %d ", mode_str, len);
 check_success(buf);

 del_hwbreakpoint_addr(wh);
}
