
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int trace; } ;


 int dump_ebb_hw_state () ;
 int dump_summary_ebb_state () ;
 TYPE_1__ ebb_state ;
 int trace_buffer_print (int ) ;

void dump_ebb_state(void)
{
 dump_summary_ebb_state();

 dump_ebb_hw_state();

 trace_buffer_print(ebb_state.trace);
}
