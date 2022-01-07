
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {unsigned long pc; scalar_t__ sp; int pstate; } ;
struct TYPE_3__ {unsigned long stack; } ;


 scalar_t__ PAGE_SIZE ;
 int PSR_MODE_EL0t ;
 TYPE_1__* current ;
 unsigned long get_free_page () ;
 int memzero (unsigned long,int) ;
 struct pt_regs* task_pt_regs (TYPE_1__*) ;

int move_to_user_mode(unsigned long pc)
{
 struct pt_regs *regs = task_pt_regs(current);
 memzero((unsigned long)regs, sizeof(*regs));
 regs->pc = pc;
 regs->pstate = PSR_MODE_EL0t;
 unsigned long stack = get_free_page();
 if (!stack) {
  return -1;
 }
 regs->sp = stack + PAGE_SIZE;
 current->stack = stack;
 return 0;
}
