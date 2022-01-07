
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_vacuums; scalar_t__ num_vacuums; scalar_t__ cycle_ctr; } ;
typedef TYPE_1__ BTVacInfo ;
typedef scalar_t__ BTCycleId ;


 int Assert (int) ;
 int BTreeShmemSize () ;
 int IsUnderPostmaster ;
 int MaxBackends ;
 scalar_t__ ShmemInitStruct (char*,int ,int*) ;
 TYPE_1__* btvacinfo ;
 scalar_t__ time (int *) ;

void
BTreeShmemInit(void)
{
 bool found;

 btvacinfo = (BTVacInfo *) ShmemInitStruct("BTree Vacuum State",
             BTreeShmemSize(),
             &found);

 if (!IsUnderPostmaster)
 {

  Assert(!found);






  btvacinfo->cycle_ctr = (BTCycleId) time(((void*)0));

  btvacinfo->num_vacuums = 0;
  btvacinfo->max_vacuums = MaxBackends;
 }
 else
  Assert(found);
}
