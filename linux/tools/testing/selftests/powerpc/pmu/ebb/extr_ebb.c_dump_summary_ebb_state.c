
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ebb_count; int spurious; int negative; int no_overflow; int * pmc_count; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 TYPE_2__ ebb_state ;
 int printf (char*,int,int,int,int,int ,int ,int ,int ,int ,int ) ;

void dump_summary_ebb_state(void)
{
 printf("ebb_state:\n" "  ebb_count    = %d\n" "  spurious     = %d\n" "  negative     = %d\n" "  no_overflow  = %d\n" "  pmc[1] count = 0x%llx\n" "  pmc[2] count = 0x%llx\n" "  pmc[3] count = 0x%llx\n" "  pmc[4] count = 0x%llx\n" "  pmc[5] count = 0x%llx\n" "  pmc[6] count = 0x%llx\n",
  ebb_state.stats.ebb_count, ebb_state.stats.spurious,
  ebb_state.stats.negative, ebb_state.stats.no_overflow,
  ebb_state.stats.pmc_count[0], ebb_state.stats.pmc_count[1],
  ebb_state.stats.pmc_count[2], ebb_state.stats.pmc_count[3],
  ebb_state.stats.pmc_count[4], ebb_state.stats.pmc_count[5]);
}
