
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ebb_count; int spurious; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int BESCR_PMEO ;
 int SPRN_BESCR ;
 int SPRN_MMCR0 ;
 scalar_t__ after ;
 scalar_t__ before ;
 int count_pmc (int,int ) ;
 TYPE_2__ ebb_state ;
 void* mfspr (int ) ;
 int mmcr0_mismatch ;
 int reset_ebb () ;
 int sample_period ;
 int sched_yield () ;

__attribute__((used)) static void syscall_ebb_callee(void)
{
 uint64_t val;

 val = mfspr(SPRN_BESCR);
 if (!(val & BESCR_PMEO)) {
  ebb_state.stats.spurious++;
  goto out;
 }

 ebb_state.stats.ebb_count++;
 count_pmc(1, sample_period);

 before = mfspr(SPRN_MMCR0);


 sched_yield();

 after = mfspr(SPRN_MMCR0);
 if (before != after)
  mmcr0_mismatch = 1;

out:
 reset_ebb();
}
