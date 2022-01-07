
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relid; int * partition_qual; } ;
typedef int Relation ;
typedef TYPE_1__ RelOptInfo ;
typedef int Node ;
typedef int List ;
typedef int Expr ;


 int ChangeVarNodes (int *,int,int,int ) ;
 int * RelationGetPartitionQual (int ) ;
 scalar_t__ expression_planner (int *) ;

__attribute__((used)) static void
set_baserel_partition_constraint(Relation relation, RelOptInfo *rel)
{
 List *partconstr;

 if (rel->partition_qual)
  return;
 partconstr = RelationGetPartitionQual(relation);
 if (partconstr)
 {
  partconstr = (List *) expression_planner((Expr *) partconstr);
  if (rel->relid != 1)
   ChangeVarNodes((Node *) partconstr, 1, rel->relid, 0);
  rel->partition_qual = partconstr;
 }
}
