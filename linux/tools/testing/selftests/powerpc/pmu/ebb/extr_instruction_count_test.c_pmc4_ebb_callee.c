
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
 int MMCR0_PMAO ;
 int SPRN_BESCR ;
 int count_pmc (int,int ) ;
 scalar_t__ counters_frozen ;
 TYPE_2__ ebb_state ;
 int mfspr (int ) ;
 int reset_ebb () ;
 int reset_ebb_with_clear_mask (int ) ;
 int sample_period ;

__attribute__((used)) static void pmc4_ebb_callee(void)
{
 uint64_t val;

 val = mfspr(SPRN_BESCR);
 if (!(val & BESCR_PMEO)) {
  ebb_state.stats.spurious++;
  goto out;
 }

 ebb_state.stats.ebb_count++;
 count_pmc(4, sample_period);
out:
 if (counters_frozen)
  reset_ebb_with_clear_mask(MMCR0_PMAO);
 else
  reset_ebb();
}
