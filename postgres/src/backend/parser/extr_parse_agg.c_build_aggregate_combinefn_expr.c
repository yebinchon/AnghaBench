
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int FuncExpr ;
typedef int Expr ;


 int COERCE_EXPLICIT_CALL ;
 int InvalidOid ;
 int * list_make2 (int *,int *) ;
 int * makeFuncExpr (int ,int ,int *,int ,int ,int ) ;
 int * make_agg_arg (int ,int ) ;

void
build_aggregate_combinefn_expr(Oid agg_state_type,
          Oid agg_input_collation,
          Oid combinefn_oid,
          Expr **combinefnexpr)
{
 Node *argp;
 List *args;
 FuncExpr *fexpr;


 argp = make_agg_arg(agg_state_type, agg_input_collation);

 args = list_make2(argp, argp);

 fexpr = makeFuncExpr(combinefn_oid,
       agg_state_type,
       args,
       InvalidOid,
       agg_input_collation,
       COERCE_EXPLICIT_CALL);

 *combinefnexpr = (Expr *) fexpr;
}
