
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int var; int * rel; } ;
typedef TYPE_1__ VariableStatData ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int List ;


 int ReleaseVariableStats (TYPE_1__) ;
 int * estimate_expression_value (int *,int ) ;
 int examine_variable (int *,int *,int,TYPE_1__*) ;
 scalar_t__ linitial (int *) ;
 int list_length (int *) ;
 scalar_t__ lsecond (int *) ;

bool
get_restriction_variable(PlannerInfo *root, List *args, int varRelid,
       VariableStatData *vardata, Node **other,
       bool *varonleft)
{
 Node *left,
      *right;
 VariableStatData rdata;


 if (list_length(args) != 2)
  return 0;

 left = (Node *) linitial(args);
 right = (Node *) lsecond(args);





 examine_variable(root, left, varRelid, vardata);
 examine_variable(root, right, varRelid, &rdata);




 if (vardata->rel && rdata.rel == ((void*)0))
 {
  *varonleft = 1;
  *other = estimate_expression_value(root, rdata.var);

  return 1;
 }

 if (vardata->rel == ((void*)0) && rdata.rel)
 {
  *varonleft = 0;
  *other = estimate_expression_value(root, vardata->var);

  *vardata = rdata;
  return 1;
 }


 ReleaseVariableStats(*vardata);
 ReleaseVariableStats(rdata);

 return 0;
}
