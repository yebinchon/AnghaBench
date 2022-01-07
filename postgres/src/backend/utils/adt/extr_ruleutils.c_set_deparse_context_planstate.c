
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ancestors; } ;
typedef TYPE_1__ deparse_namespace ;
typedef int PlanState ;
typedef int Node ;
typedef int List ;


 int Assert (int) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 int set_deparse_planstate (TYPE_1__*,int *) ;

List *
set_deparse_context_planstate(List *dpcontext,
         Node *planstate, List *ancestors)
{
 deparse_namespace *dpns;


 Assert(list_length(dpcontext) == 1);
 dpns = (deparse_namespace *) linitial(dpcontext);


 set_deparse_planstate(dpns, (PlanState *) planstate);
 dpns->ancestors = ancestors;

 return dpcontext;
}
