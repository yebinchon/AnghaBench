
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;


 int COUNTER_OVERFLOW ;
 int FAIL_IF (int ) ;
 int MMCR0_FC ;
 int SKIP_IF (int) ;
 int SPRN_MMCR0 ;
 int determine_overhead (struct event*) ;
 int do_count_loop (struct event*,int,int ,int) ;
 int ebb_event_enable (struct event*) ;
 int ebb_global_disable () ;
 int ebb_global_enable () ;
 int ebb_is_supported () ;
 int event_close (struct event*) ;
 int event_init_named (struct event*,int,char*) ;
 int event_leader_ebb_init (struct event*) ;
 int event_open (struct event*) ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;
 int pmc4_ebb_callee ;
 int printf (char*,...) ;
 int sample_period ;
 int setup_ebb_handler (int ) ;

int instruction_count(void)
{
 struct event event;
 uint64_t overhead;

 SKIP_IF(!ebb_is_supported());

 event_init_named(&event, 0x400FA, "PM_RUN_INST_CMPL");
 event_leader_ebb_init(&event);
 event.attr.exclude_kernel = 1;
 event.attr.exclude_hv = 1;
 event.attr.exclude_idle = 1;

 FAIL_IF(event_open(&event));
 FAIL_IF(ebb_event_enable(&event));

 sample_period = COUNTER_OVERFLOW;

 setup_ebb_handler(pmc4_ebb_callee);
 mtspr(SPRN_MMCR0, mfspr(SPRN_MMCR0) & ~MMCR0_FC);
 ebb_global_enable();

 overhead = determine_overhead(&event);
 printf("Overhead of null loop: %lu instructions\n", overhead);


 FAIL_IF(do_count_loop(&event, 0x100000, overhead, 1));


 FAIL_IF(do_count_loop(&event, 0xa00000, overhead, 1));


 FAIL_IF(do_count_loop(&event, 0x6400000, overhead, 1));


 FAIL_IF(do_count_loop(&event, 0x40000000, overhead, 1));


 FAIL_IF(do_count_loop(&event, 0x400000000, overhead, 1));


 FAIL_IF(do_count_loop(&event, 0x1000000000, overhead, 1));


 FAIL_IF(do_count_loop(&event, 0x2000000000, overhead, 1));

 ebb_global_disable();
 event_close(&event);

 printf("Finished OK\n");

 return 0;
}
