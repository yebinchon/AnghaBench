
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int FAIL_IF (int ) ;
 int MMCR0_FC ;
 int SKIP_IF (int) ;
 int SPRN_MMCR0 ;
 int SPRN_PMC1 ;
 int child () ;
 int ebb_enable_pmc_counting (int) ;
 int ebb_event_enable (int *) ;
 int ebb_global_enable () ;
 int ebb_is_supported () ;
 int event ;
 int event_close (int *) ;
 int event_init_named (int *,int,char*) ;
 int event_leader_ebb_init (int *) ;
 int event_open (int *) ;
 int exit (int ) ;
 scalar_t__ fork () ;
 int mtspr (int ,int ) ;
 int pmc_sample_period (int ) ;
 int sample_period ;
 int setup_ebb_handler (int ) ;
 int standard_ebb_callee ;
 int wait_for_child (scalar_t__) ;

int fork_cleanup(void)
{
 pid_t pid;

 SKIP_IF(!ebb_is_supported());

 event_init_named(&event, 0x1001e, "cycles");
 event_leader_ebb_init(&event);

 FAIL_IF(event_open(&event));

 ebb_enable_pmc_counting(1);
 setup_ebb_handler(standard_ebb_callee);
 ebb_global_enable();

 FAIL_IF(ebb_event_enable(&event));

 mtspr(SPRN_MMCR0, MMCR0_FC);
 mtspr(SPRN_PMC1, pmc_sample_period(sample_period));



 pid = fork();
 if (pid == 0)
  exit(child());


 FAIL_IF(wait_for_child(pid));


 event_close(&event);

 return 0;
}
