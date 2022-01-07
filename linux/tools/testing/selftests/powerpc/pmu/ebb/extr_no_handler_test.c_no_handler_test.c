
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int exclude_kernel; int exclude_hv; int exclude_idle; } ;
struct event {TYPE_1__ attr; } ;


 int FAIL_IF (int) ;
 int SKIP_IF (int) ;
 int SPRN_EBBHR ;
 int SPRN_MMCR0 ;
 int SPRN_PMC1 ;
 int dump_ebb_state () ;
 int ebb_event_enable (struct event*) ;
 int ebb_is_supported () ;
 int event_close (struct event*) ;
 int event_init_named (struct event*,int,char*) ;
 int event_leader_ebb_init (struct event*) ;
 int event_open (struct event*) ;
 int mb () ;
 int mfspr (int ) ;
 int mtspr (int ,int ) ;
 int pmc_sample_period (int) ;
 int sample_period ;

__attribute__((used)) static int no_handler_test(void)
{
 struct event event;
 u64 val;
 int i;

 SKIP_IF(!ebb_is_supported());

 event_init_named(&event, 0x1001e, "cycles");
 event_leader_ebb_init(&event);

 event.attr.exclude_kernel = 1;
 event.attr.exclude_hv = 1;
 event.attr.exclude_idle = 1;

 FAIL_IF(event_open(&event));
 FAIL_IF(ebb_event_enable(&event));

 val = mfspr(SPRN_EBBHR);
 FAIL_IF(val != 0);


 sample_period = 1000;
 mtspr(SPRN_PMC1, pmc_sample_period(sample_period));


 for (i = 0; i < 1000; i++)
  mb();

 dump_ebb_state();


 val = mfspr(SPRN_MMCR0);
 FAIL_IF(val != 0x0000000080000080);

 event_close(&event);

 dump_ebb_state();



 return 0;
}
