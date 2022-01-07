
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ ebb_count; int spurious; } ;
struct TYPE_4__ {int trace; TYPE_1__ stats; } ;


 int BESCR_PMEO ;
 int MMCR0_PMAO ;
 scalar_t__ NUMBER_OF_EBBS ;
 int SPRN_BESCR ;
 int SPRN_MMCR0 ;
 int SPRN_PMC1 ;
 int SPRN_SIAR ;
 int count_pmc (int,int ) ;
 TYPE_2__ ebb_state ;
 int mfspr (int ) ;
 int reset_ebb () ;
 int reset_ebb_with_clear_mask (int ) ;
 int sample_period ;
 int trace_log_counter (int ,scalar_t__) ;
 int trace_log_reg (int ,int ,int) ;

__attribute__((used)) static void ebb_callee(void)
{
 uint64_t siar, val;

 val = mfspr(SPRN_BESCR);
 if (!(val & BESCR_PMEO)) {
  ebb_state.stats.spurious++;
  goto out;
 }

 ebb_state.stats.ebb_count++;
 trace_log_counter(ebb_state.trace, ebb_state.stats.ebb_count);


 count_pmc(1, sample_period);

out:
 if (ebb_state.stats.ebb_count == NUMBER_OF_EBBS)

  reset_ebb_with_clear_mask(MMCR0_PMAO);
 else

  reset_ebb();


 siar = mfspr(SPRN_SIAR);
 trace_log_reg(ebb_state.trace, SPRN_SIAR, siar);

 val = mfspr(SPRN_PMC1);
 trace_log_reg(ebb_state.trace, SPRN_PMC1, val);

 val = mfspr(SPRN_MMCR0);
 trace_log_reg(ebb_state.trace, SPRN_MMCR0, val);
}
