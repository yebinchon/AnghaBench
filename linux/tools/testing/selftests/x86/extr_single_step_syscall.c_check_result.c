
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long X86_EFLAGS_TF ;
 int exit (int) ;
 unsigned long get_eflags () ;
 int printf (char*,...) ;
 int set_eflags (unsigned long) ;
 scalar_t__ sig_traps ;

__attribute__((used)) static void check_result(void)
{
 unsigned long new_eflags = get_eflags();
 set_eflags(new_eflags & ~X86_EFLAGS_TF);

 if (!sig_traps) {
  printf("[FAIL]\tNo SIGTRAP\n");
  exit(1);
 }

 if (!(new_eflags & X86_EFLAGS_TF)) {
  printf("[FAIL]\tTF was cleared\n");
  exit(1);
 }

 printf("[OK]\tSurvived with TF set and %d traps\n", (int)sig_traps);
 sig_traps = 0;
}
