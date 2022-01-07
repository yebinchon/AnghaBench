
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;
struct TYPE_5__ {int ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 int FAIL_IF (int) ;
 int SKIP_IF (int) ;
 int SPRN_PMC4 ;
 int count_pmc (int,int) ;
 int dump_ebb_hw_state () ;
 int dump_summary_ebb_state () ;
 int ebb_check_count (int,int,int) ;
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
 int mtspr (int ,int) ;
 int pmc_sample_period (int) ;
 int sample_period ;
 int sched_yield () ;
 int setup_ebb_handler (int ) ;
 int standard_ebb_callee ;

__attribute__((used)) static int test_body(void)
{
 int i, orig_period, max_period;
 struct event event;

 SKIP_IF(!ebb_is_supported());


 event_init_named(&event, 0x40002, "instructions");
 event_leader_ebb_init(&event);

 event.attr.exclude_kernel = 1;
 event.attr.exclude_hv = 1;
 event.attr.exclude_idle = 1;

 FAIL_IF(event_open(&event));

 ebb_enable_pmc_counting(4);
 setup_ebb_handler(standard_ebb_callee);
 ebb_global_enable();
 FAIL_IF(ebb_event_enable(&event));







 orig_period = max_period = sample_period = 400;

 mtspr(SPRN_PMC4, pmc_sample_period(sample_period));

 while (ebb_state.stats.ebb_count < 1000000) {
  for (i = 0; i < 100000; i++)
   sched_yield();


  if (sample_period >= (orig_period + 200))
   sample_period = orig_period;
  else
   sample_period++;

  if (sample_period > max_period)
   max_period = sample_period;
 }

 ebb_freeze_pmcs();
 ebb_global_disable();

 count_pmc(4, sample_period);
 mtspr(SPRN_PMC4, 0xdead);

 dump_summary_ebb_state();
 dump_ebb_hw_state();

 event_close(&event);

 FAIL_IF(ebb_state.stats.ebb_count == 0);


 FAIL_IF(!ebb_check_count(4, orig_period, 2 * (max_period - orig_period)));

 return 0;
}
