
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;
struct TYPE_5__ {int ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 int FAIL_IF (int) ;
 int MMCR0_FC ;
 int SKIP_IF (int) ;
 int SPRN_MMCR0 ;
 int SPRN_PMC1 ;
 int core_busy_loop () ;
 int count_pmc (int,int ) ;
 int counters_frozen ;
 int dump_ebb_state () ;
 int ebb_callee ;
 int ebb_event_enable (struct event*) ;
 int ebb_freeze_pmcs () ;
 int ebb_global_disable () ;
 int ebb_global_enable () ;
 int ebb_is_supported () ;
 TYPE_3__ ebb_state ;
 int ebbs_while_frozen ;
 int event_close (struct event*) ;
 int event_init_named (struct event*,int,char*) ;
 int event_leader_ebb_init (struct event*) ;
 int event_open (struct event*) ;
 int mb () ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int pmc_sample_period (int ) ;
 int printf (char*,int) ;
 int sample_period ;
 int setup_ebb_handler (int ) ;

int cycles_with_freeze(void)
{
 struct event event;
 uint64_t val;
 bool fc_cleared;

 SKIP_IF(!ebb_is_supported());

 event_init_named(&event, 0x1001e, "cycles");
 event_leader_ebb_init(&event);

 event.attr.exclude_kernel = 1;
 event.attr.exclude_hv = 1;
 event.attr.exclude_idle = 1;

 FAIL_IF(event_open(&event));

 setup_ebb_handler(ebb_callee);
 ebb_global_enable();
 FAIL_IF(ebb_event_enable(&event));

 mtspr(SPRN_PMC1, pmc_sample_period(sample_period));

 fc_cleared = 0;


 while ((ebb_state.stats.ebb_count < 20 && !fc_cleared) ||
  ebb_state.stats.ebb_count < 1)
 {
  counters_frozen = 0;
  mb();
  mtspr(SPRN_MMCR0, mfspr(SPRN_MMCR0) & ~MMCR0_FC);

  FAIL_IF(core_busy_loop());

  counters_frozen = 1;
  mb();
  mtspr(SPRN_MMCR0, mfspr(SPRN_MMCR0) | MMCR0_FC);

  val = mfspr(SPRN_MMCR0);
  if (! (val & MMCR0_FC)) {
   printf("Outside of loop, FC NOT set MMCR0 0x%lx\n", val);
   fc_cleared = 1;
  }
 }

 ebb_global_disable();
 ebb_freeze_pmcs();

 count_pmc(1, sample_period);

 dump_ebb_state();

 printf("EBBs while frozen %d\n", ebbs_while_frozen);

 event_close(&event);

 FAIL_IF(ebb_state.stats.ebb_count == 0);
 FAIL_IF(fc_cleared);

 return 0;
}
