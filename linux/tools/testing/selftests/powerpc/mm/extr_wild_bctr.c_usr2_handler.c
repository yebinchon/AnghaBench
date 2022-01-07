
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int save_regs (void*) ;

__attribute__((used)) static void usr2_handler(int signum, siginfo_t *info, void *ctxt_v)
{
 save_regs(ctxt_v);
}
