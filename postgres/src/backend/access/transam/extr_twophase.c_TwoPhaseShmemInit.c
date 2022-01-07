
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pgprocno; } ;
struct TYPE_6__ {TYPE_1__* freeGXacts; scalar_t__ numPrepXacts; } ;
struct TYPE_5__ {scalar_t__ dummyBackendId; int pgprocno; struct TYPE_5__* next; } ;
typedef TYPE_1__* GlobalTransaction ;


 int Assert (int) ;
 int IsUnderPostmaster ;
 int MAXALIGN (scalar_t__) ;
 scalar_t__ MaxBackends ;
 TYPE_4__* PreparedXactProcs ;
 TYPE_2__* ShmemInitStruct (char*,int ,int*) ;
 int TwoPhaseShmemSize () ;
 TYPE_2__* TwoPhaseState ;
 int TwoPhaseStateData ;
 int max_prepared_xacts ;
 scalar_t__ offsetof (int ,int ) ;
 int prepXacts ;

void
TwoPhaseShmemInit(void)
{
 bool found;

 TwoPhaseState = ShmemInitStruct("Prepared Transaction Table",
         TwoPhaseShmemSize(),
         &found);
 if (!IsUnderPostmaster)
 {
  GlobalTransaction gxacts;
  int i;

  Assert(!found);
  TwoPhaseState->freeGXacts = ((void*)0);
  TwoPhaseState->numPrepXacts = 0;




  gxacts = (GlobalTransaction)
   ((char *) TwoPhaseState +
    MAXALIGN(offsetof(TwoPhaseStateData, prepXacts) +
       sizeof(GlobalTransaction) * max_prepared_xacts));
  for (i = 0; i < max_prepared_xacts; i++)
  {

   gxacts[i].next = TwoPhaseState->freeGXacts;
   TwoPhaseState->freeGXacts = &gxacts[i];


   gxacts[i].pgprocno = PreparedXactProcs[i].pgprocno;
   gxacts[i].dummyBackendId = MaxBackends + 1 + i;
  }
 }
 else
  Assert(found);
}
