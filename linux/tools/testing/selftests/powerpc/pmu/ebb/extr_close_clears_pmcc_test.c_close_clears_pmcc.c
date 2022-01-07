
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct event {int dummy; } ;
struct TYPE_3__ {int ebb_count; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int FAIL_IF (int) ;
 int SKIP_IF (int) ;
 int SPRN_BESCR ;
 int SPRN_EBBHR ;
 int SPRN_EBBRR ;
 int SPRN_PMC1 ;
 int catch_sigill (int ) ;
 int core_busy_loop () ;
 int ebb_enable_pmc_counting (int) ;
 int ebb_event_enable (struct event*) ;
 int ebb_global_disable () ;
 int ebb_global_enable () ;
 int ebb_is_supported () ;
 TYPE_2__ ebb_state ;
 int event_close (struct event*) ;
 int event_init_named (struct event*,int,char*) ;
 int event_leader_ebb_init (struct event*) ;
 int event_open (struct event*) ;
 int mfspr (int ) ;
 int mtspr (int ,int ) ;
 int pmc_sample_period (int ) ;
 int sample_period ;
 int setup_ebb_handler (int ) ;
 int standard_ebb_callee ;
 int write_pmc1 ;

int close_clears_pmcc(void)
{
 struct event event;

 SKIP_IF(!ebb_is_supported());

 event_init_named(&event, 0x1001e, "cycles");
 event_leader_ebb_init(&event);

 FAIL_IF(event_open(&event));

 ebb_enable_pmc_counting(1);
 setup_ebb_handler(standard_ebb_callee);
 ebb_global_enable();
 FAIL_IF(ebb_event_enable(&event));

 mtspr(SPRN_PMC1, pmc_sample_period(sample_period));

 while (ebb_state.stats.ebb_count < 1)
  FAIL_IF(core_busy_loop());

 ebb_global_disable();
 event_close(&event);

 FAIL_IF(ebb_state.stats.ebb_count == 0);




 FAIL_IF(catch_sigill(write_pmc1));


 mfspr(SPRN_EBBHR);
 mfspr(SPRN_EBBRR);
 mfspr(SPRN_BESCR);

 return 0;
}
