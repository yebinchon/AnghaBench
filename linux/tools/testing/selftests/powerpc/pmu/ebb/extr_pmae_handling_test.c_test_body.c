
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
 int SPRN_PMC1 ;
 int after ;
 int before ;
 int core_busy_loop () ;
 int count_pmc (int,int ) ;
 int dump_ebb_state () ;
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
 int mmcr0_mismatch ;
 int mtspr (int ,int ) ;
 int pmc_sample_period (int ) ;
 int printf (char*,int ,int ) ;
 int sample_period ;
 int setup_ebb_handler (int ) ;
 int syscall_ebb_callee ;

__attribute__((used)) static int test_body(void)
{
 struct event event;

 SKIP_IF(!ebb_is_supported());

 event_init_named(&event, 0x1001e, "cycles");
 event_leader_ebb_init(&event);

 event.attr.exclude_kernel = 1;
 event.attr.exclude_hv = 1;
 event.attr.exclude_idle = 1;

 FAIL_IF(event_open(&event));

 setup_ebb_handler(syscall_ebb_callee);
 ebb_global_enable();

 FAIL_IF(ebb_event_enable(&event));

 mtspr(SPRN_PMC1, pmc_sample_period(sample_period));

 while (ebb_state.stats.ebb_count < 20 && !mmcr0_mismatch)
  FAIL_IF(core_busy_loop());

 ebb_global_disable();
 ebb_freeze_pmcs();

 count_pmc(1, sample_period);

 dump_ebb_state();

 if (mmcr0_mismatch)
  printf("Saw MMCR0 before 0x%lx after 0x%lx\n", before, after);

 event_close(&event);

 FAIL_IF(ebb_state.stats.ebb_count == 0);
 FAIL_IF(mmcr0_mismatch);

 return 0;
}
