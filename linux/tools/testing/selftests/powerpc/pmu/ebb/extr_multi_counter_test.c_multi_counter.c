
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {int fd; TYPE_1__ attr; } ;
struct TYPE_5__ {int ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 int FAIL_IF (int) ;
 int PERF_EVENT_IOC_ENABLE ;
 int PERF_IOC_FLAG_GROUP ;
 int SKIP_IF (int) ;
 int SPRN_PMC1 ;
 int SPRN_PMC2 ;
 int SPRN_PMC3 ;
 int SPRN_PMC4 ;
 int SPRN_PMC5 ;
 int SPRN_PMC6 ;
 int core_busy_loop () ;
 int count_pmc (int,int ) ;
 int dump_ebb_state () ;
 int ebb_check_mmcr0 () ;
 int ebb_enable_pmc_counting (int) ;
 int ebb_freeze_pmcs () ;
 int ebb_global_disable () ;
 int ebb_global_enable () ;
 int ebb_is_supported () ;
 TYPE_3__ ebb_state ;
 int event_close (struct event*) ;
 int event_ebb_init (struct event*) ;
 int event_init_named (struct event*,int,char*) ;
 int event_leader_ebb_init (struct event*) ;
 int event_open_with_group (struct event*,int) ;
 int event_read (struct event*) ;
 int ioctl (int,int ,int ) ;
 int mtspr (int ,int ) ;
 int pmc_sample_period (int ) ;
 int sample_period ;
 int setup_ebb_handler (int ) ;
 int standard_ebb_callee ;

int multi_counter(void)
{
 struct event events[6];
 int i, group_fd;

 SKIP_IF(!ebb_is_supported());

 event_init_named(&events[0], 0x1001C, "PM_CMPLU_STALL_THRD");
 event_init_named(&events[1], 0x2D016, "PM_CMPLU_STALL_FXU");
 event_init_named(&events[2], 0x30006, "PM_CMPLU_STALL_OTHER_CMPL");
 event_init_named(&events[3], 0x4000A, "PM_CMPLU_STALL");
 event_init_named(&events[4], 0x600f4, "PM_RUN_CYC");
 event_init_named(&events[5], 0x500fa, "PM_RUN_INST_CMPL");

 event_leader_ebb_init(&events[0]);
 for (i = 1; i < 6; i++)
  event_ebb_init(&events[i]);

 group_fd = -1;
 for (i = 0; i < 6; i++) {
  events[i].attr.exclude_kernel = 1;
  events[i].attr.exclude_hv = 1;
  events[i].attr.exclude_idle = 1;

  FAIL_IF(event_open_with_group(&events[i], group_fd));
  if (group_fd == -1)
   group_fd = events[0].fd;
 }

 ebb_enable_pmc_counting(1);
 ebb_enable_pmc_counting(2);
 ebb_enable_pmc_counting(3);
 ebb_enable_pmc_counting(4);
 ebb_enable_pmc_counting(5);
 ebb_enable_pmc_counting(6);
 setup_ebb_handler(standard_ebb_callee);

 FAIL_IF(ioctl(events[0].fd, PERF_EVENT_IOC_ENABLE, PERF_IOC_FLAG_GROUP));
 FAIL_IF(event_read(&events[0]));

 ebb_global_enable();

 mtspr(SPRN_PMC1, pmc_sample_period(sample_period));
 mtspr(SPRN_PMC2, pmc_sample_period(sample_period));
 mtspr(SPRN_PMC3, pmc_sample_period(sample_period));
 mtspr(SPRN_PMC4, pmc_sample_period(sample_period));
 mtspr(SPRN_PMC5, pmc_sample_period(sample_period));
 mtspr(SPRN_PMC6, pmc_sample_period(sample_period));

 while (ebb_state.stats.ebb_count < 50) {
  FAIL_IF(core_busy_loop());
  FAIL_IF(ebb_check_mmcr0());
 }

 ebb_global_disable();
 ebb_freeze_pmcs();

 count_pmc(1, sample_period);
 count_pmc(2, sample_period);
 count_pmc(3, sample_period);
 count_pmc(4, sample_period);
 count_pmc(5, sample_period);
 count_pmc(6, sample_period);

 dump_ebb_state();

 for (i = 0; i < 6; i++)
  event_close(&events[i]);

 FAIL_IF(ebb_state.stats.ebb_count == 0);

 return 0;
}
