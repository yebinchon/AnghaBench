
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int wi_cost_limit; int wi_cost_delay; } ;


 TYPE_1__* MyWorkerInfo ;
 int VacuumCostDelay ;
 int VacuumCostLimit ;

void
AutoVacuumUpdateDelay(void)
{
 if (MyWorkerInfo)
 {
  VacuumCostDelay = MyWorkerInfo->wi_cost_delay;
  VacuumCostLimit = MyWorkerInfo->wi_cost_limit;
 }
}
