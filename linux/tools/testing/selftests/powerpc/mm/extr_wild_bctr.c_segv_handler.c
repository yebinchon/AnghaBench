
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int longjmp (int ,int) ;
 int save_regs (void*) ;
 int setjmp_env ;

__attribute__((used)) static void segv_handler(int signum, siginfo_t *info, void *ctxt_v)
{
 save_regs(ctxt_v);
 longjmp(setjmp_env, 1);
}
