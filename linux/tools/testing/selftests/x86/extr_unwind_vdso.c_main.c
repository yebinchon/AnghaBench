
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* dli_fname; int dli_fbase; } ;
typedef TYPE_1__ Dl_info ;


 int AT_SYSINFO ;
 int SIGTRAP ;
 int SYS_getpid ;
 int X86_EFLAGS_TF ;
 int dladdr (void*,TYPE_1__*) ;
 int get_eflags () ;
 scalar_t__ getauxval (int ) ;
 int got_sysinfo ;
 scalar_t__ nerrs ;
 int printf (char*,...) ;
 int set_eflags (int) ;
 int sethandler (int ,int ,int ) ;
 int sigtrap ;
 int syscall (int ,...) ;
 scalar_t__ sysinfo ;

int main()
{
 sysinfo = getauxval(AT_SYSINFO);
 printf("\tAT_SYSINFO is 0x%lx\n", sysinfo);

 Dl_info info;
 if (!dladdr((void *)sysinfo, &info)) {
  printf("[WARN]\tdladdr failed on AT_SYSINFO\n");
 } else {
  printf("[OK]\tAT_SYSINFO maps to %s, loaded at 0x%p\n",
         info.dli_fname, info.dli_fbase);
 }

 sethandler(SIGTRAP, sigtrap, 0);

 syscall(SYS_getpid);
 printf("[RUN]\tSet TF and check a fast syscall\n");
 set_eflags(get_eflags() | X86_EFLAGS_TF);
 syscall(SYS_getpid, 1, 2, 3, 4, 5, 6);
 if (!got_sysinfo) {
  set_eflags(get_eflags() & ~X86_EFLAGS_TF);






  printf("[WARN]\tsyscall(2) didn't enter AT_SYSINFO\n");
 }

 if (get_eflags() & X86_EFLAGS_TF) {
  printf("[FAIL]\tTF is still set\n");
  nerrs++;
 }

 if (nerrs) {
  printf("[FAIL]\tThere were errors\n");
  return 1;
 } else {
  printf("[OK]\tAll is well\n");
  return 0;
 }
}
