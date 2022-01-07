
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TypeFuncClass ;
typedef int * TupleDesc ;
typedef scalar_t__ Oid ;
typedef int Node ;


 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 scalar_t__ RECORDOID ;
 scalar_t__ TYPEFUNC_COMPOSITE ;
 scalar_t__ TYPEFUNC_COMPOSITE_DOMAIN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 scalar_t__ exprType (int *) ;
 int format_type_be (scalar_t__) ;
 scalar_t__ get_expr_result_type (int *,int *,int **) ;

TupleDesc
get_expr_result_tupdesc(Node *expr, bool noError)
{
 TupleDesc tupleDesc;
 TypeFuncClass functypclass;

 functypclass = get_expr_result_type(expr, ((void*)0), &tupleDesc);

 if (functypclass == TYPEFUNC_COMPOSITE ||
  functypclass == TYPEFUNC_COMPOSITE_DOMAIN)
  return tupleDesc;

 if (!noError)
 {
  Oid exprTypeId = exprType(expr);

  if (exprTypeId != RECORDOID)
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("type %s is not composite",
       format_type_be(exprTypeId))));
  else
   ereport(ERROR,
     (errcode(ERRCODE_WRONG_OBJECT_TYPE),
      errmsg("record type has not been registered")));
 }

 return ((void*)0);
}
