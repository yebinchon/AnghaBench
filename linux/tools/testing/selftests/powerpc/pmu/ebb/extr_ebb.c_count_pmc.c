
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ u64 ;
struct TYPE_3__ {int * pmc_count; int negative; } ;
struct TYPE_4__ {int trace; TYPE_1__ stats; } ;


 scalar_t__ COUNTER_OVERFLOW ;
 size_t PMC_INDEX (int) ;
 scalar_t__ SPRN_PMC1 ;
 TYPE_2__ ebb_state ;
 scalar_t__ pmc_sample_period (scalar_t__) ;
 scalar_t__ read_pmc (int) ;
 int trace_log_reg (int ,scalar_t__,scalar_t__) ;
 int write_pmc (int,scalar_t__) ;

int count_pmc(int pmc, uint32_t sample_period)
{
 uint32_t start_value;
 u64 val;


 start_value = pmc_sample_period(sample_period);

 val = read_pmc(pmc);
 if (val < start_value)
  ebb_state.stats.negative++;
 else
  ebb_state.stats.pmc_count[PMC_INDEX(pmc)] += val - start_value;

 trace_log_reg(ebb_state.trace, SPRN_PMC1 + pmc - 1, val);


 write_pmc(pmc, start_value);


 return val >= COUNTER_OVERFLOW;
}
