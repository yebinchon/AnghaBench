
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hasPseudoConstantQuals; } ;
typedef TYPE_1__ PlannerInfo ;
typedef int List ;


 int * NIL ;
 int * extract_actual_clauses (int *,int) ;
 int * order_qual_clauses (TYPE_1__*,int *) ;

__attribute__((used)) static List *
get_gating_quals(PlannerInfo *root, List *quals)
{

 if (!root->hasPseudoConstantQuals)
  return NIL;


 quals = order_qual_clauses(root, quals);


 return extract_actual_clauses(quals, 1);
}
