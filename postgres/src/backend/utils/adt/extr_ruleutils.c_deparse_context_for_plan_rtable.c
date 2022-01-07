
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ctes; int * rtable_names; int * rtable; } ;
typedef TYPE_1__ deparse_namespace ;
typedef int List ;


 int NIL ;
 int * list_make1 (TYPE_1__*) ;
 scalar_t__ palloc0 (int) ;
 int set_simple_column_names (TYPE_1__*) ;

List *
deparse_context_for_plan_rtable(List *rtable, List *rtable_names)
{
 deparse_namespace *dpns;

 dpns = (deparse_namespace *) palloc0(sizeof(deparse_namespace));


 dpns->rtable = rtable;
 dpns->rtable_names = rtable_names;
 dpns->ctes = NIL;






 set_simple_column_names(dpns);


 return list_make1(dpns);
}
