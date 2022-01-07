
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int List ;
typedef int Expr ;


 int COERCE_EXPLICIT_CALL ;
 int InvalidOid ;
 int * lappend (int *,int ) ;
 int * list_make1 (int ) ;
 scalar_t__ makeFuncExpr (int ,int ,int *,int ,int ,int ) ;
 int make_agg_arg (int ,int ) ;

void
build_aggregate_finalfn_expr(Oid *agg_input_types,
        int num_finalfn_inputs,
        Oid agg_state_type,
        Oid agg_result_type,
        Oid agg_input_collation,
        Oid finalfn_oid,
        Expr **finalfnexpr)
{
 List *args;
 int i;




 args = list_make1(make_agg_arg(agg_state_type, agg_input_collation));


 for (i = 0; i < num_finalfn_inputs - 1; i++)
 {
  args = lappend(args,
        make_agg_arg(agg_input_types[i], agg_input_collation));
 }

 *finalfnexpr = (Expr *) makeFuncExpr(finalfn_oid,
           agg_result_type,
           args,
           InvalidOid,
           agg_input_collation,
           COERCE_EXPLICIT_CALL);

}
