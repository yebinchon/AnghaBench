
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* uc_regs; scalar_t__* gp_regs; } ;
struct TYPE_6__ {TYPE_2__ uc_mcontext; } ;
typedef TYPE_3__ ucontext_t ;
typedef int siginfo_t ;
struct TYPE_4__ {scalar_t__* gregs; } ;


 size_t PT_NIP ;
 int _exit (int) ;
 unsigned int expected_instruction ;
 unsigned int instruction_mask ;

void signal_action_handler(int signal_num, siginfo_t *info, void *ptr)
{
 ucontext_t *ctx = ptr;



 unsigned int *pc = (unsigned int *)ctx->uc_mcontext.uc_regs->gregs[PT_NIP];






 if ((*pc & instruction_mask) == expected_instruction)
  _exit(0);

 _exit(1);
}
