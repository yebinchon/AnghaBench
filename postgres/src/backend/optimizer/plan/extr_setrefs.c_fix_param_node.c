
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ paramkind; int paramid; } ;
struct TYPE_7__ {int * multiexpr_params; } ;
typedef TYPE_1__ PlannerInfo ;
typedef TYPE_2__ Param ;
typedef int Node ;
typedef int List ;


 int ERROR ;
 scalar_t__ PARAM_MULTIEXPR ;
 int * copyObject (TYPE_2__*) ;
 int elog (int ,char*,int) ;
 int list_length (int *) ;
 TYPE_2__* list_nth (int *,int) ;

__attribute__((used)) static Node *
fix_param_node(PlannerInfo *root, Param *p)
{
 if (p->paramkind == PARAM_MULTIEXPR)
 {
  int subqueryid = p->paramid >> 16;
  int colno = p->paramid & 0xFFFF;
  List *params;

  if (subqueryid <= 0 ||
   subqueryid > list_length(root->multiexpr_params))
   elog(ERROR, "unexpected PARAM_MULTIEXPR ID: %d", p->paramid);
  params = (List *) list_nth(root->multiexpr_params, subqueryid - 1);
  if (colno <= 0 || colno > list_length(params))
   elog(ERROR, "unexpected PARAM_MULTIEXPR ID: %d", p->paramid);
  return copyObject(list_nth(params, colno - 1));
 }
 return (Node *) copyObject(p);
}
