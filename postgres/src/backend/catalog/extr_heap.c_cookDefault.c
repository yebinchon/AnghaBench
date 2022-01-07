
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ParseState ;
typedef int Oid ;
typedef int Node ;


 int Assert (int) ;
 int COERCE_IMPLICIT_CAST ;
 int COERCION_ASSIGNMENT ;
 int ERRCODE_DATATYPE_MISMATCH ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;
 int EXPR_KIND_COLUMN_DEFAULT ;
 int EXPR_KIND_GENERATED_COLUMN ;
 scalar_t__ OidIsValid (int ) ;
 int assign_expr_collations (int *,int *) ;
 int check_nested_generated (int *,int *) ;
 int * coerce_to_target_type (int *,int *,int ,int ,int ,int ,int ,int) ;
 scalar_t__ contain_mutable_functions (int *) ;
 int contain_var_clause (int *) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,...) ;
 int exprType (int *) ;
 int format_type_be (int ) ;
 int * transformExpr (int *,int *,int ) ;

Node *
cookDefault(ParseState *pstate,
   Node *raw_default,
   Oid atttypid,
   int32 atttypmod,
   const char *attname,
   char attgenerated)
{
 Node *expr;

 Assert(raw_default != ((void*)0));




 expr = transformExpr(pstate, raw_default, attgenerated ? EXPR_KIND_GENERATED_COLUMN : EXPR_KIND_COLUMN_DEFAULT);

 if (attgenerated)
 {
  check_nested_generated(pstate, expr);

  if (contain_mutable_functions(expr))
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
      errmsg("generation expression is not immutable")));
 }
 else
 {




  Assert(!contain_var_clause(expr));
 }






 if (OidIsValid(atttypid))
 {
  Oid type_id = exprType(expr);

  expr = coerce_to_target_type(pstate, expr, type_id,
          atttypid, atttypmod,
          COERCION_ASSIGNMENT,
          COERCE_IMPLICIT_CAST,
          -1);
  if (expr == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("column \"%s\" is of type %s"
       " but default expression is of type %s",
       attname,
       format_type_be(atttypid),
       format_type_be(type_id)),
      errhint("You will need to rewrite or cast the expression.")));
 }




 assign_expr_collations(pstate, expr);

 return expr;
}
