
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int value; } ;
struct event {TYPE_2__ result; } ;
typedef int int64_t ;
struct TYPE_4__ {int* pmc_count; int ebb_count; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;


 int MMCR0_FC ;
 int SPRN_MMCR0 ;
 int clear_ebb_stats () ;
 int count_pmc (int,int ) ;
 int counters_frozen ;
 TYPE_3__ ebb_state ;
 int mb () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int printf (char*,int,...) ;
 int sample_period ;
 int thirty_two_instruction_loop (int) ;

__attribute__((used)) static int do_count_loop(struct event *event, uint64_t instructions,
    uint64_t overhead, bool report)
{
 int64_t difference, expected;
 double percentage;

 clear_ebb_stats();

 counters_frozen = 0;
 mb();
 mtspr(SPRN_MMCR0, mfspr(SPRN_MMCR0) & ~MMCR0_FC);

 thirty_two_instruction_loop(instructions >> 5);

 counters_frozen = 1;
 mb();
 mtspr(SPRN_MMCR0, mfspr(SPRN_MMCR0) | MMCR0_FC);

 count_pmc(4, sample_period);

 event->result.value = ebb_state.stats.pmc_count[4-1];
 expected = instructions + overhead;
 difference = event->result.value - expected;
 percentage = (double)difference / event->result.value * 100;

 if (report) {
  printf("Looped for %lu instructions, overhead %lu\n", instructions, overhead);
  printf("Expected %lu\n", expected);
  printf("Actual   %llu\n", event->result.value);
  printf("Delta    %ld, %f%%\n", difference, percentage);
  printf("Took %d EBBs\n", ebb_state.stats.ebb_count);
 }

 if (difference < 0)
  difference = -difference;


 difference *= 10000 * 100;
 if (difference / event->result.value)
  return -1;

 return 0;
}
