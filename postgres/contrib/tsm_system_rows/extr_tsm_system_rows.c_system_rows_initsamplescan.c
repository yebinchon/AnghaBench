
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tsm_state; } ;
typedef int SystemRowsSamplerData ;
typedef TYPE_1__ SampleScanState ;


 int palloc0 (int) ;

__attribute__((used)) static void
system_rows_initsamplescan(SampleScanState *node, int eflags)
{
 node->tsm_state = palloc0(sizeof(SystemRowsSamplerData));

}
