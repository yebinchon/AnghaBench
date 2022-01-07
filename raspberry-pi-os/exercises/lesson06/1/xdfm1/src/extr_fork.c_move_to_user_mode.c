
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {unsigned long pc; int sp; int pstate; } ;
struct TYPE_5__ {int pgd; } ;
struct TYPE_6__ {TYPE_1__ mm; } ;


 int PAGE_SIZE ;
 int PSR_MODE_EL0t ;
 unsigned long allocate_user_page (TYPE_2__*,int ) ;
 TYPE_2__* current ;
 int memcpy (unsigned long,unsigned long,unsigned long) ;
 int set_pgd (int ) ;
 struct pt_regs* task_pt_regs (TYPE_2__*) ;

int move_to_user_mode(unsigned long start, unsigned long size, unsigned long pc)
{
 struct pt_regs *regs = task_pt_regs(current);
 regs->pstate = PSR_MODE_EL0t;
 regs->pc = pc;
 regs->sp = 2 * PAGE_SIZE;
 unsigned long code_page = allocate_user_page(current, 0);
 if (code_page == 0) {
  return -1;
 }
 memcpy(start, code_page, size);
 set_pgd(current->mm.pgd);
 return 0;
}
