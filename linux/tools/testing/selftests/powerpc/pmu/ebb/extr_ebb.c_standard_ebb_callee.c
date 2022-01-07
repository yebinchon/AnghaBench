
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_3__ {int no_overflow; int ebb_count; int spurious; } ;
struct TYPE_4__ {TYPE_1__ stats; scalar_t__* pmc_enable; int trace; } ;


 int BESCR_PMEO ;
 size_t PMC_INDEX (int) ;
 int SPRN_BESCR ;
 int SPRN_MMCR0 ;
 scalar_t__ count_pmc (int,int ) ;
 TYPE_2__ ebb_state ;
 int mfspr (int ) ;
 int reset_ebb () ;
 int sample_period ;
 int trace_log_counter (int ,int ) ;
 int trace_log_reg (int ,int ,int) ;

void standard_ebb_callee(void)
{
 int found, i;
 u64 val;

 val = mfspr(SPRN_BESCR);
 if (!(val & BESCR_PMEO)) {
  ebb_state.stats.spurious++;
  goto out;
 }

 ebb_state.stats.ebb_count++;
 trace_log_counter(ebb_state.trace, ebb_state.stats.ebb_count);

 val = mfspr(SPRN_MMCR0);
 trace_log_reg(ebb_state.trace, SPRN_MMCR0, val);

 found = 0;
 for (i = 1; i <= 6; i++) {
  if (ebb_state.pmc_enable[PMC_INDEX(i)])
   found += count_pmc(i, sample_period);
 }

 if (!found)
  ebb_state.stats.no_overflow++;

out:
 reset_ebb();
}
