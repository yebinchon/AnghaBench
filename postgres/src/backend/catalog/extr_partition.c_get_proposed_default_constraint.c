
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int List ;
typedef int Expr ;


 int NOT_EXPR ;
 int * canonicalize_qual (int *,int) ;
 scalar_t__ eval_const_expressions (int *,int *) ;
 int list_make1 (int *) ;
 int * makeBoolExpr (int ,int ,int) ;
 int * make_ands_explicit (int *) ;
 int * make_ands_implicit (int *) ;

List *
get_proposed_default_constraint(List *new_part_constraints)
{
 Expr *defPartConstraint;

 defPartConstraint = make_ands_explicit(new_part_constraints);






 defPartConstraint = makeBoolExpr(NOT_EXPR,
          list_make1(defPartConstraint),
          -1);


 defPartConstraint =
  (Expr *) eval_const_expressions(((void*)0),
          (Node *) defPartConstraint);
 defPartConstraint = canonicalize_qual(defPartConstraint, 1);

 return make_ands_implicit(defPartConstraint);
}
