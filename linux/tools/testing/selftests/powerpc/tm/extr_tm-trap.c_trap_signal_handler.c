
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int* gp_regs; } ;
struct TYPE_4__ {TYPE_1__ uc_mcontext; } ;
typedef TYPE_2__ ucontext_t ;
typedef int siginfo_t ;


 int LE ;
 int MSR_LE ;
 size_t PT_MSR ;
 size_t PT_NIP ;
 scalar_t__ le ;
 int trap_event ;

void trap_signal_handler(int signo, siginfo_t *si, void *uc)
{
 ucontext_t *ucp = uc;
 uint64_t thread_endianness;


 thread_endianness = MSR_LE & ucp->uc_mcontext.gp_regs[PT_MSR];





 if (le) {

  if (trap_event == 0) {






  }

  else if (trap_event == 1) {
   if (thread_endianness == LE) {

    ucp->uc_mcontext.gp_regs[PT_NIP] += 16;
   } else {





    ucp->uc_mcontext.gp_regs[PT_MSR] |= 1UL;
    ucp->uc_mcontext.gp_regs[PT_NIP] += 4;
   }
  }
 }





 else {

  if (trap_event == 0) {





   ucp->uc_mcontext.gp_regs[PT_MSR] |= 1UL;
  }

  else if (trap_event == 1) {






  }

  else {
   ucp->uc_mcontext.gp_regs[PT_MSR] &= ~1UL;
   ucp->uc_mcontext.gp_regs[PT_NIP] += 8;
  }
 }

 trap_event++;
}
