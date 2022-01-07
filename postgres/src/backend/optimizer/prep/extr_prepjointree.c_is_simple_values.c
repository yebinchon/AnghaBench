
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* parse; } ;
struct TYPE_7__ {scalar_t__ rtekind; scalar_t__ values_lists; } ;
struct TYPE_6__ {scalar_t__ rtable; } ;
typedef TYPE_2__ RangeTblEntry ;
typedef TYPE_3__ PlannerInfo ;
typedef int Node ;


 int Assert (int) ;
 scalar_t__ RTE_VALUES ;
 scalar_t__ contain_volatile_functions (int *) ;
 scalar_t__ expression_returns_set (int *) ;
 scalar_t__ linitial (scalar_t__) ;
 int list_length (scalar_t__) ;

__attribute__((used)) static bool
is_simple_values(PlannerInfo *root, RangeTblEntry *rte)
{
 Assert(rte->rtekind == RTE_VALUES);






 if (list_length(rte->values_lists) != 1)
  return 0;
 if (expression_returns_set((Node *) rte->values_lists) ||
  contain_volatile_functions((Node *) rte->values_lists))
  return 0;







 if (list_length(root->parse->rtable) != 1 ||
  rte != (RangeTblEntry *) linitial(root->parse->rtable))
  return 0;

 return 1;
}
