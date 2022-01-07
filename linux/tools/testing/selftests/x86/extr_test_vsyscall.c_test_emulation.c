
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int SIGTRAP ;
 int X86_EFLAGS_TF ;
 int get_eflags () ;
 int num_vsyscall_traps ;
 int printf (char*,...) ;
 int set_eflags (int) ;
 int sethandler (int ,int ,int ) ;
 int sigtrap ;
 int vsyscall_map_x ;
 int vtime (int *) ;

__attribute__((used)) static int test_emulation(void)
{
 time_t tmp;
 bool is_native;

 if (!vsyscall_map_x)
  return 0;

 printf("[RUN]\tchecking that vsyscalls are emulated\n");
 sethandler(SIGTRAP, sigtrap, 0);
 set_eflags(get_eflags() | X86_EFLAGS_TF);
 vtime(&tmp);
 set_eflags(get_eflags() & ~X86_EFLAGS_TF);
 is_native = (num_vsyscall_traps > 1);

 printf("[%s]\tvsyscalls are %s (%d instructions in vsyscall page)\n",
        (is_native ? "FAIL" : "OK"),
        (is_native ? "native" : "emulated"),
        (int)num_vsyscall_traps);

 return is_native;
}
