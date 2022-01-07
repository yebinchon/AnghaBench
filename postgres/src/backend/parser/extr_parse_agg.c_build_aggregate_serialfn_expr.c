
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;
typedef int FuncExpr ;
typedef int Expr ;


 int BYTEAOID ;
 int COERCE_EXPLICIT_CALL ;
 int INTERNALOID ;
 int InvalidOid ;
 int * list_make1 (int ) ;
 int * makeFuncExpr (int ,int ,int *,int ,int ,int ) ;
 int make_agg_arg (int ,int ) ;

void
build_aggregate_serialfn_expr(Oid serialfn_oid,
         Expr **serialfnexpr)
{
 List *args;
 FuncExpr *fexpr;


 args = list_make1(make_agg_arg(INTERNALOID, InvalidOid));

 fexpr = makeFuncExpr(serialfn_oid,
       BYTEAOID,
       args,
       InvalidOid,
       InvalidOid,
       COERCE_EXPLICIT_CALL);
 *serialfnexpr = (Expr *) fexpr;
}
