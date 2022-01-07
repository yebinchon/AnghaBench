
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ verbose; int rtable; } ;
typedef int PlanState ;
typedef int List ;
typedef TYPE_1__ ExplainState ;


 int list_length (int ) ;
 int show_qual (int *,char const*,int *,int *,int,TYPE_1__*) ;

__attribute__((used)) static void
show_upper_qual(List *qual, const char *qlabel,
    PlanState *planstate, List *ancestors,
    ExplainState *es)
{
 bool useprefix;

 useprefix = (list_length(es->rtable) > 1 || es->verbose);
 show_qual(qual, qlabel, planstate, ancestors, useprefix, es);
}
