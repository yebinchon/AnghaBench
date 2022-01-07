
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int p_rtable; } ;
typedef TYPE_1__ ParseState ;
typedef int Node ;


 int ERRCODE_INVALID_COLUMN_REFERENCE ;
 int ERROR ;
 int EXPR_KIND_CHECK_CONSTRAINT ;
 int assign_expr_collations (TYPE_1__*,int *) ;
 int * coerce_to_boolean (TYPE_1__*,int *,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int list_length (int ) ;
 int * transformExpr (TYPE_1__*,int *,int ) ;

__attribute__((used)) static Node *
cookConstraint(ParseState *pstate,
      Node *raw_constraint,
      char *relname)
{
 Node *expr;




 expr = transformExpr(pstate, raw_constraint, EXPR_KIND_CHECK_CONSTRAINT);




 expr = coerce_to_boolean(pstate, expr, "CHECK");




 assign_expr_collations(pstate, expr);





 if (list_length(pstate->p_rtable) != 1)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_COLUMN_REFERENCE),
     errmsg("only table \"%s\" can be referenced in check constraint",
      relname)));

 return expr;
}
