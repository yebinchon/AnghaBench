
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int numtrans; int * pertrans; TYPE_1__* phase; } ;
struct TYPE_6__ {int numsets; } ;
typedef int * AggStatePerTrans ;
typedef int * AggStatePerGroup ;
typedef TYPE_2__ AggState ;


 int Max (int ,int) ;
 int initialize_aggregate (TYPE_2__*,int *,int *) ;
 int select_current_set (TYPE_2__*,int,int) ;

__attribute__((used)) static void
initialize_aggregates(AggState *aggstate,
       AggStatePerGroup *pergroups,
       int numReset)
{
 int transno;
 int numGroupingSets = Max(aggstate->phase->numsets, 1);
 int setno = 0;
 int numTrans = aggstate->numtrans;
 AggStatePerTrans transstates = aggstate->pertrans;

 if (numReset == 0)
  numReset = numGroupingSets;

 for (setno = 0; setno < numReset; setno++)
 {
  AggStatePerGroup pergroup = pergroups[setno];

  select_current_set(aggstate, setno, 0);

  for (transno = 0; transno < numTrans; transno++)
  {
   AggStatePerTrans pertrans = &transstates[transno];
   AggStatePerGroup pergroupstate = &pergroup[transno];

   initialize_aggregate(aggstate, pertrans, pergroupstate);
  }
 }
}
