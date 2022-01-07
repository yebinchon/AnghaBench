
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int ebb_count; int spurious; } ;
struct TYPE_4__ {int trace; TYPE_1__ stats; } ;


 int BESCR_PMEO ;
 int MMCR0_FC ;
 int MMCR0_PMAO ;
 int SPRN_BESCR ;
 int SPRN_MMCR0 ;
 int count_pmc (int,int ) ;
 scalar_t__ counters_frozen ;
 TYPE_2__ ebb_state ;
 int ebbs_while_frozen ;
 int mfspr (int ) ;
 int reset_ebb_with_clear_mask (int) ;
 int sample_period ;
 int trace_log_counter (int ,int ) ;
 int trace_log_reg (int ,int ,int) ;
 int trace_log_string (int ,char*) ;

__attribute__((used)) static void ebb_callee(void)
{
 uint64_t mask, val;

 mask = MMCR0_PMAO | MMCR0_FC;

 val = mfspr(SPRN_BESCR);
 if (!(val & BESCR_PMEO)) {
  ebb_state.stats.spurious++;
  goto out;
 }

 ebb_state.stats.ebb_count++;
 trace_log_counter(ebb_state.trace, ebb_state.stats.ebb_count);

 val = mfspr(SPRN_MMCR0);
 trace_log_reg(ebb_state.trace, SPRN_MMCR0, val);

 if (counters_frozen) {
  trace_log_string(ebb_state.trace, "frozen");
  ebbs_while_frozen++;
  mask &= ~MMCR0_FC;
 }

 count_pmc(1, sample_period);
out:
 reset_ebb_with_clear_mask(mask);
}
