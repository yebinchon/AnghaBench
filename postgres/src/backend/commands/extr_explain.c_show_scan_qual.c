
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ verbose; } ;
struct TYPE_7__ {int plan; } ;
typedef TYPE_1__ PlanState ;
typedef int List ;
typedef TYPE_2__ ExplainState ;


 scalar_t__ IsA (int ,int ) ;
 int SubqueryScan ;
 int show_qual (int *,char const*,TYPE_1__*,int *,int,TYPE_2__*) ;

__attribute__((used)) static void
show_scan_qual(List *qual, const char *qlabel,
      PlanState *planstate, List *ancestors,
      ExplainState *es)
{
 bool useprefix;

 useprefix = (IsA(planstate->plan, SubqueryScan) ||es->verbose);
 show_qual(qual, qlabel, planstate, ancestors, useprefix, es);
}
