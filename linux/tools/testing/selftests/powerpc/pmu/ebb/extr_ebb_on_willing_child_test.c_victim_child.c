
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union pipe {int dummy; } pipe ;
struct TYPE_3__ {int ebb_count; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int FAIL_IF (int) ;
 int core_busy_loop () ;
 int count_pmc (int,int ) ;
 int dump_ebb_state () ;
 int ebb_enable_pmc_counting (int) ;
 int ebb_freeze_pmcs () ;
 int ebb_global_disable () ;
 int ebb_global_enable () ;
 TYPE_2__ ebb_state ;
 int notify_parent (union pipe) ;
 int sample_period ;
 int setup_ebb_handler (int ) ;
 int standard_ebb_callee ;
 int wait_for_parent (union pipe) ;

__attribute__((used)) static int victim_child(union pipe read_pipe, union pipe write_pipe)
{
 FAIL_IF(wait_for_parent(read_pipe));


 ebb_enable_pmc_counting(1);
 setup_ebb_handler(standard_ebb_callee);
 ebb_global_enable();

 FAIL_IF(notify_parent(write_pipe));

 while (ebb_state.stats.ebb_count < 20) {
  FAIL_IF(core_busy_loop());
 }

 ebb_global_disable();
 ebb_freeze_pmcs();

 count_pmc(1, sample_period);

 dump_ebb_state();

 FAIL_IF(ebb_state.stats.ebb_count == 0);

 return 0;
}
