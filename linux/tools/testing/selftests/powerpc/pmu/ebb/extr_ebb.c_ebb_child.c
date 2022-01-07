
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union pipe {int dummy; } pipe ;
typedef int uint64_t ;
struct TYPE_4__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;
struct TYPE_5__ {int ebb_count; } ;
struct TYPE_6__ {TYPE_2__ stats; } ;


 int FAIL_IF (int) ;
 int SPRN_MMCR0 ;
 int SPRN_MMCR2 ;
 int SPRN_MMCRA ;
 int SPRN_PMC1 ;
 int core_busy_loop () ;
 int count_pmc (int,int ) ;
 int dump_ebb_state () ;
 int ebb_enable_pmc_counting (int) ;
 int ebb_freeze_pmcs () ;
 int ebb_global_disable () ;
 int ebb_global_enable () ;
 TYPE_3__ ebb_state ;
 int event_close (struct event*) ;
 int event_enable (struct event*) ;
 int event_init_named (struct event*,int,char*) ;
 int event_leader_ebb_init (struct event*) ;
 int event_open (struct event*) ;
 scalar_t__ event_read (struct event*) ;
 int mfspr (int ) ;
 int mtspr (int ,int ) ;
 int notify_parent (union pipe) ;
 int notify_parent_of_error (union pipe) ;
 int pmc_sample_period (int ) ;
 int sample_period ;
 int setup_ebb_handler (int ) ;
 int standard_ebb_callee ;
 int wait_for_parent (union pipe) ;

int ebb_child(union pipe read_pipe, union pipe write_pipe)
{
 struct event event;
 uint64_t val;

 FAIL_IF(wait_for_parent(read_pipe));

 event_init_named(&event, 0x1001e, "cycles");
 event_leader_ebb_init(&event);

 event.attr.exclude_kernel = 1;
 event.attr.exclude_hv = 1;
 event.attr.exclude_idle = 1;

 FAIL_IF(event_open(&event));

 ebb_enable_pmc_counting(1);
 setup_ebb_handler(standard_ebb_callee);
 ebb_global_enable();

 FAIL_IF(event_enable(&event));

 if (event_read(&event)) {





  notify_parent_of_error(write_pipe);
  return 2;
 }

 mtspr(SPRN_PMC1, pmc_sample_period(sample_period));

 FAIL_IF(notify_parent(write_pipe));
 FAIL_IF(wait_for_parent(read_pipe));
 FAIL_IF(notify_parent(write_pipe));

 while (ebb_state.stats.ebb_count < 20) {
  FAIL_IF(core_busy_loop());


  val = mfspr(SPRN_MMCRA);
  val |= mfspr(SPRN_MMCR2);
  val |= mfspr(SPRN_MMCR0);
 }

 ebb_global_disable();
 ebb_freeze_pmcs();

 count_pmc(1, sample_period);

 dump_ebb_state();

 event_close(&event);

 FAIL_IF(ebb_state.stats.ebb_count == 0);

 return 0;
}
