
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int* gp_regs; } ;
struct TYPE_12__ {TYPE_4__* uc_link; TYPE_1__ uc_mcontext; } ;
typedef TYPE_3__ ucontext_t ;
typedef int siginfo_t ;
struct TYPE_11__ {int* gp_regs; } ;
struct TYPE_13__ {TYPE_2__ uc_mcontext; } ;


 int ARG_MESS_WITH_MSR_AT ;
 int ARG_MESS_WITH_TM_BEFORE ;
 int MADV_DONTNEED ;
 int MSR_TS_S ;
 int MSR_TS_T ;
 size_t PT_CCR ;
 size_t PT_CTR ;
 size_t PT_DAR ;
 size_t PT_DSCR ;
 size_t PT_DSISR ;
 size_t PT_LNK ;
 size_t PT_MSR ;
 size_t PT_NIP ;
 size_t PT_ORIG_R3 ;
 size_t PT_REGS_COUNT ;
 size_t PT_RESULT ;
 size_t PT_SOFTE ;
 size_t PT_TRAP ;
 size_t PT_XER ;
 int args ;
 int free (TYPE_4__*) ;
 int madvise (TYPE_4__*,int,int ) ;
 TYPE_4__* malloc (int) ;
 int memcpy (TYPE_4__*,void*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 int mess_with_tm () ;
 scalar_t__ one_in_chance (int) ;
 int rand () ;
 void* random () ;
 TYPE_4__* tmp_uc ;

__attribute__((used)) static void trap_signal_handler(int signo, siginfo_t *si, void *uc)
{
 ucontext_t *ucp = uc;

 ucp->uc_link = tmp_uc;







 if (one_in_chance(3)) {
  memset(ucp->uc_link, rand(), sizeof(ucontext_t));
 } else if (one_in_chance(2)) {
  memcpy(ucp->uc_link, uc, sizeof(ucontext_t));
 } else if (one_in_chance(2)) {
  if (tmp_uc) {
   free(tmp_uc);
   tmp_uc = ((void*)0);
  }
  tmp_uc = malloc(sizeof(ucontext_t));
  ucp->uc_link = tmp_uc;

  madvise(ucp->uc_link, sizeof(ucontext_t), MADV_DONTNEED);
 }

 if (args & ARG_MESS_WITH_MSR_AT) {

  if (one_in_chance(4)) {
   ucp->uc_link->uc_mcontext.gp_regs[PT_MSR] |= MSR_TS_S;
  } else {
   if (one_in_chance(2)) {
    ucp->uc_link->uc_mcontext.gp_regs[PT_MSR] |=
       MSR_TS_T;
   } else if (one_in_chance(2)) {
    ucp->uc_link->uc_mcontext.gp_regs[PT_MSR] |=
      MSR_TS_T | MSR_TS_S;
   }
  }


  if (one_in_chance(2)) {
   ucp->uc_mcontext.gp_regs[PT_MSR] |= MSR_TS_S;
  } else if (one_in_chance(2)) {
   if (one_in_chance(2))
    ucp->uc_mcontext.gp_regs[PT_MSR] |=
     MSR_TS_T;
   else if (one_in_chance(2))
    ucp->uc_mcontext.gp_regs[PT_MSR] |=
     MSR_TS_T | MSR_TS_S;
  }
 }

 if (one_in_chance(20)) {

  if (one_in_chance(5))
   mess_with_tm();


  return;
 }

 if (one_in_chance(10))
  ucp->uc_mcontext.gp_regs[PT_MSR] = random();
 if (one_in_chance(10))
  ucp->uc_mcontext.gp_regs[PT_NIP] = random();
 if (one_in_chance(10))
  ucp->uc_link->uc_mcontext.gp_regs[PT_MSR] = random();
 if (one_in_chance(10))
  ucp->uc_link->uc_mcontext.gp_regs[PT_NIP] = random();

 ucp->uc_mcontext.gp_regs[PT_TRAP] = random();
 ucp->uc_mcontext.gp_regs[PT_DSISR] = random();
 ucp->uc_mcontext.gp_regs[PT_DAR] = random();
 ucp->uc_mcontext.gp_regs[PT_ORIG_R3] = random();
 ucp->uc_mcontext.gp_regs[PT_XER] = random();
 ucp->uc_mcontext.gp_regs[PT_RESULT] = random();
 ucp->uc_mcontext.gp_regs[PT_SOFTE] = random();
 ucp->uc_mcontext.gp_regs[PT_DSCR] = random();
 ucp->uc_mcontext.gp_regs[PT_CTR] = random();
 ucp->uc_mcontext.gp_regs[PT_LNK] = random();
 ucp->uc_mcontext.gp_regs[PT_CCR] = random();
 ucp->uc_mcontext.gp_regs[PT_REGS_COUNT] = random();

 ucp->uc_link->uc_mcontext.gp_regs[PT_TRAP] = random();
 ucp->uc_link->uc_mcontext.gp_regs[PT_DSISR] = random();
 ucp->uc_link->uc_mcontext.gp_regs[PT_DAR] = random();
 ucp->uc_link->uc_mcontext.gp_regs[PT_ORIG_R3] = random();
 ucp->uc_link->uc_mcontext.gp_regs[PT_XER] = random();
 ucp->uc_link->uc_mcontext.gp_regs[PT_RESULT] = random();
 ucp->uc_link->uc_mcontext.gp_regs[PT_SOFTE] = random();
 ucp->uc_link->uc_mcontext.gp_regs[PT_DSCR] = random();
 ucp->uc_link->uc_mcontext.gp_regs[PT_CTR] = random();
 ucp->uc_link->uc_mcontext.gp_regs[PT_LNK] = random();
 ucp->uc_link->uc_mcontext.gp_regs[PT_CCR] = random();
 ucp->uc_link->uc_mcontext.gp_regs[PT_REGS_COUNT] = random();

 if (args & ARG_MESS_WITH_TM_BEFORE) {
  if (one_in_chance(2))
   mess_with_tm();
 }
}
