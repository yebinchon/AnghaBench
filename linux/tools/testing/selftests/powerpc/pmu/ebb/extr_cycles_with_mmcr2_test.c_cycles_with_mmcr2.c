
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;
struct TYPE_5__ {int ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 int FAIL_IF (int) ;
 scalar_t__ MMCR2_EXPECTED_1 ;
 scalar_t__ MMCR2_EXPECTED_2 ;
 int SKIP_IF (int) ;
 int SPRN_MMCR2 ;
 int SPRN_PMC1 ;
 int core_busy_loop () ;
 int count_pmc (int,int ) ;
 int dump_ebb_state () ;
 int ebb_enable_pmc_counting (int) ;
 int ebb_event_enable (struct event*) ;
 int ebb_freeze_pmcs () ;
 int ebb_global_disable () ;
 int ebb_global_enable () ;
 int ebb_is_supported () ;
 TYPE_3__ ebb_state ;
 int event_close (struct event*) ;
 int event_init_named (struct event*,int,char*) ;
 int event_leader_ebb_init (struct event*) ;
 int event_open (struct event*) ;
 scalar_t__ mfspr (int ) ;
 int mtspr (int ,scalar_t__) ;
 scalar_t__ pmc_sample_period (int ) ;
 int printf (char*,scalar_t__) ;
 int sample_period ;
 int setup_ebb_handler (int ) ;
 int standard_ebb_callee ;

int cycles_with_mmcr2(void)
{
 struct event event;
 uint64_t val, expected[2], actual;
 int i;
 bool bad_mmcr2;

 SKIP_IF(!ebb_is_supported());

 event_init_named(&event, 0x1001e, "cycles");
 event_leader_ebb_init(&event);

 event.attr.exclude_kernel = 1;
 event.attr.exclude_hv = 1;
 event.attr.exclude_idle = 1;

 FAIL_IF(event_open(&event));

 ebb_enable_pmc_counting(1);
 setup_ebb_handler(standard_ebb_callee);
 ebb_global_enable();

 FAIL_IF(ebb_event_enable(&event));

 mtspr(SPRN_PMC1, pmc_sample_period(sample_period));


 expected[0] = MMCR2_EXPECTED_1;
 expected[1] = MMCR2_EXPECTED_2;
 i = 0;
 bad_mmcr2 = 0;


 while ((ebb_state.stats.ebb_count < 20 && !bad_mmcr2) ||
  ebb_state.stats.ebb_count < 1)
 {
  mtspr(SPRN_MMCR2, expected[i % 2]);

  FAIL_IF(core_busy_loop());

  val = mfspr(SPRN_MMCR2);
  if (val != expected[i % 2]) {
   bad_mmcr2 = 1;
   actual = val;
  }

  i++;
 }

 ebb_global_disable();
 ebb_freeze_pmcs();

 count_pmc(1, sample_period);

 dump_ebb_state();

 event_close(&event);

 FAIL_IF(ebb_state.stats.ebb_count == 0);

 if (bad_mmcr2)
  printf("Bad MMCR2 value seen is 0x%lx\n", actual);

 FAIL_IF(bad_mmcr2);

 return 0;
}
