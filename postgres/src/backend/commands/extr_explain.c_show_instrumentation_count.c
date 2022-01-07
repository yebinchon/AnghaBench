
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ format; int analyze; } ;
struct TYPE_8__ {TYPE_1__* instrument; } ;
struct TYPE_7__ {double nfiltered2; double nfiltered1; double nloops; } ;
typedef TYPE_2__ PlanState ;
typedef TYPE_3__ ExplainState ;


 scalar_t__ EXPLAIN_FORMAT_TEXT ;
 int ExplainPropertyFloat (char const*,int *,double,int ,TYPE_3__*) ;

__attribute__((used)) static void
show_instrumentation_count(const char *qlabel, int which,
         PlanState *planstate, ExplainState *es)
{
 double nfiltered;
 double nloops;

 if (!es->analyze || !planstate->instrument)
  return;

 if (which == 2)
  nfiltered = planstate->instrument->nfiltered2;
 else
  nfiltered = planstate->instrument->nfiltered1;
 nloops = planstate->instrument->nloops;


 if (nfiltered > 0 || es->format != EXPLAIN_FORMAT_TEXT)
 {
  if (nloops > 0)
   ExplainPropertyFloat(qlabel, ((void*)0), nfiltered / nloops, 0, es);
  else
   ExplainPropertyFloat(qlabel, ((void*)0), 0.0, 0, es);
 }
}
