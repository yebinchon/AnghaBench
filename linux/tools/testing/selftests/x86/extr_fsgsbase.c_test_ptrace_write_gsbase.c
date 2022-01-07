
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int PTRACE_CONT ;
 int PTRACE_PEEKUSER ;
 int PTRACE_POKEUSER ;
 int PTRACE_TRACEME ;
 scalar_t__ SIGTRAP ;
 unsigned long USER_REGS_OFFSET (unsigned long) ;
 scalar_t__ WSTOPSIG (int) ;
 int _exit (int ) ;
 int err (int,char*) ;
 scalar_t__ fork () ;
 unsigned long gs_base ;
 unsigned long load_gs () ;
 int nerrs ;
 int printf (char*,...) ;
 unsigned long ptrace (int ,scalar_t__,unsigned long,int) ;
 int raise (scalar_t__) ;
 unsigned long* shared_scratch ;
 int wait (int*) ;

__attribute__((used)) static void test_ptrace_write_gsbase(void)
{
 int status;
 pid_t child = fork();

 if (child < 0)
  err(1, "fork");

 if (child == 0) {
  printf("[RUN]\tPTRACE_POKE(), write GSBASE from ptracer\n");

  *shared_scratch = load_gs();

  if (ptrace(PTRACE_TRACEME, 0, ((void*)0), ((void*)0)) != 0)
   err(1, "PTRACE_TRACEME");

  raise(SIGTRAP);
  _exit(0);
 }

 wait(&status);

 if (WSTOPSIG(status) == SIGTRAP) {
  unsigned long gs, base;
  unsigned long gs_offset = USER_REGS_OFFSET(gs);
  unsigned long base_offset = USER_REGS_OFFSET(gs_base);

  gs = ptrace(PTRACE_PEEKUSER, child, gs_offset, ((void*)0));

  if (gs != *shared_scratch) {
   nerrs++;
   printf("[FAIL]\tGS is not prepared with nonzero\n");
   goto END;
  }

  if (ptrace(PTRACE_POKEUSER, child, base_offset, 0xFF) != 0)
   err(1, "PTRACE_POKEUSER");

  gs = ptrace(PTRACE_PEEKUSER, child, gs_offset, ((void*)0));
  base = ptrace(PTRACE_PEEKUSER, child, base_offset, ((void*)0));







  if (gs == 0 && base == 0xFF) {
   printf("[OK]\tGS was reset as expected\n");
  } else {
   nerrs++;
   printf("[FAIL]\tGS=0x%lx, GSBASE=0x%lx (should be 0, 0xFF)\n", gs, base);
  }
 }

END:
 ptrace(PTRACE_CONT, child, ((void*)0), ((void*)0));
}
