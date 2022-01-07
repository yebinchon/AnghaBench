
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGTRAP ;
 int X86_EFLAGS_NT ;
 int X86_EFLAGS_TF ;
 int do_it (int) ;
 scalar_t__ nerrs ;
 int printf (char*) ;
 int sethandler (int ,int ,int ) ;
 int sigtrap ;

int main(void)
{
 printf("[RUN]\tSet NT and issue a syscall\n");
 do_it(X86_EFLAGS_NT);






 sethandler(SIGTRAP, sigtrap, 0);

 printf("[RUN]\tSet NT|TF and issue a syscall\n");
 do_it(X86_EFLAGS_NT | X86_EFLAGS_TF);

 return nerrs == 0 ? 0 : 1;
}
