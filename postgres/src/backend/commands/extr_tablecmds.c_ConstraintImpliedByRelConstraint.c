
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_check; TYPE_1__* check; } ;
typedef TYPE_2__ TupleConstr ;
struct TYPE_6__ {TYPE_2__* constr; } ;
struct TYPE_4__ {int ccbin; int ccvalid; } ;
typedef int Relation ;
typedef int Node ;
typedef int List ;
typedef int Expr ;


 TYPE_3__* RelationGetDescr (int ) ;
 scalar_t__ canonicalize_qual (int *,int) ;
 int * eval_const_expressions (int *,int *) ;
 int * list_concat (int *,int ) ;
 int * list_copy (int *) ;
 int make_ands_implicit (int *) ;
 int predicate_implied_by (int *,int *,int) ;
 int * stringToNode (int ) ;

bool
ConstraintImpliedByRelConstraint(Relation scanrel, List *testConstraint, List *provenConstraint)
{
 List *existConstraint = list_copy(provenConstraint);
 TupleConstr *constr = RelationGetDescr(scanrel)->constr;
 int num_check,
    i;

 num_check = (constr != ((void*)0)) ? constr->num_check : 0;
 for (i = 0; i < num_check; i++)
 {
  Node *cexpr;





  if (!constr->check[i].ccvalid)
   continue;

  cexpr = stringToNode(constr->check[i].ccbin);







  cexpr = eval_const_expressions(((void*)0), cexpr);
  cexpr = (Node *) canonicalize_qual((Expr *) cexpr, 1);

  existConstraint = list_concat(existConstraint,
           make_ands_implicit((Expr *) cexpr));
 }
 return predicate_implied_by(testConstraint, existConstraint, 1);
}
