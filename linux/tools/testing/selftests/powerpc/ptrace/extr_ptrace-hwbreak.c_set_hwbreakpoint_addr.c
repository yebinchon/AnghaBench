
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_hw_breakpoint {int version; scalar_t__ condition_value; void* addr2; void* addr; int condition_mode; int addr_mode; int trigger_type; } ;
typedef void* __u64 ;


 int PPC_BREAKPOINT_CONDITION_NONE ;
 int PPC_BREAKPOINT_MODE_EXACT ;
 int PPC_BREAKPOINT_MODE_RANGE_INCLUSIVE ;
 int PPC_BREAKPOINT_TRIGGER_RW ;
 int PPC_PTRACE_SETHWDEBUG ;
 int child_pid ;
 int exit (int) ;
 int perror (char*) ;
 int ptrace (int ,int ,int ,struct ppc_hw_breakpoint*) ;

__attribute__((used)) static int set_hwbreakpoint_addr(void *addr, int range)
{
 int ret;

 struct ppc_hw_breakpoint info;

 info.version = 1;
 info.trigger_type = PPC_BREAKPOINT_TRIGGER_RW;
 info.addr_mode = PPC_BREAKPOINT_MODE_EXACT;
 if (range > 0)
  info.addr_mode = PPC_BREAKPOINT_MODE_RANGE_INCLUSIVE;
 info.condition_mode = PPC_BREAKPOINT_CONDITION_NONE;
 info.addr = (__u64)addr;
 info.addr2 = (__u64)addr + range;
 info.condition_value = 0;

 ret = ptrace(PPC_PTRACE_SETHWDEBUG, child_pid, 0, &info);
 if (ret < 0) {
  perror("Can't set breakpoint\n");
  exit(-1);
 }
 return ret;
}
