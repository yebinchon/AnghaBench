
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;
struct TYPE_5__ {scalar_t__ ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 int FAIL_IF (int) ;
 int SIGINT ;
 int SPRN_PMC1 ;
 int child_should_exit ;
 int core_busy_loop () ;
 int count_pmc (int,int ) ;
 int dump_summary_ebb_state () ;
 int ebb_check_mmcr0 () ;
 int ebb_enable_pmc_counting (int) ;
 int ebb_event_enable (struct event*) ;
 int ebb_freeze_pmcs () ;
 int ebb_global_disable () ;
 int ebb_global_enable () ;
 TYPE_3__ ebb_state ;
 int event_close (struct event*) ;
 int event_init_named (struct event*,int,char*) ;
 int event_leader_ebb_init (struct event*) ;
 int event_open (struct event*) ;
 int mtspr (int ,int ) ;
 int perror (char*) ;
 int pmc_sample_period (int ) ;
 int sample_period ;
 int setup_ebb_handler (int ) ;
 scalar_t__ sigaction (int ,int *,int *) ;
 int sigint_action ;
 int standard_ebb_callee ;

__attribute__((used)) static int cycles_child(void)
{
 struct event event;

 if (sigaction(SIGINT, &sigint_action, ((void*)0))) {
  perror("sigaction");
  return 1;
 }

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

 while (!child_should_exit) {
  FAIL_IF(core_busy_loop());
  FAIL_IF(ebb_check_mmcr0());
 }

 ebb_global_disable();
 ebb_freeze_pmcs();

 count_pmc(1, sample_period);

 dump_summary_ebb_state();

 event_close(&event);

 FAIL_IF(ebb_state.stats.ebb_count == 0);

 return 0;
}
