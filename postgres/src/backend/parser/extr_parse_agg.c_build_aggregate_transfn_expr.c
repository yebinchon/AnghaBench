
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int funcvariadic; } ;
typedef int Oid ;
typedef int List ;
typedef TYPE_1__ FuncExpr ;
typedef int Expr ;


 int COERCE_EXPLICIT_CALL ;
 int InvalidOid ;
 scalar_t__ OidIsValid (int ) ;
 int * lappend (int *,int ) ;
 int * list_make1 (int ) ;
 TYPE_1__* makeFuncExpr (int ,int ,int *,int ,int ,int ) ;
 int make_agg_arg (int ,int ) ;

void
build_aggregate_transfn_expr(Oid *agg_input_types,
        int agg_num_inputs,
        int agg_num_direct_inputs,
        bool agg_variadic,
        Oid agg_state_type,
        Oid agg_input_collation,
        Oid transfn_oid,
        Oid invtransfn_oid,
        Expr **transfnexpr,
        Expr **invtransfnexpr)
{
 List *args;
 FuncExpr *fexpr;
 int i;




 args = list_make1(make_agg_arg(agg_state_type, agg_input_collation));

 for (i = agg_num_direct_inputs; i < agg_num_inputs; i++)
 {
  args = lappend(args,
        make_agg_arg(agg_input_types[i], agg_input_collation));
 }

 fexpr = makeFuncExpr(transfn_oid,
       agg_state_type,
       args,
       InvalidOid,
       agg_input_collation,
       COERCE_EXPLICIT_CALL);
 fexpr->funcvariadic = agg_variadic;
 *transfnexpr = (Expr *) fexpr;




 if (invtransfnexpr != ((void*)0))
 {
  if (OidIsValid(invtransfn_oid))
  {
   fexpr = makeFuncExpr(invtransfn_oid,
         agg_state_type,
         args,
         InvalidOid,
         agg_input_collation,
         COERCE_EXPLICIT_CALL);
   fexpr->funcvariadic = agg_variadic;
   *invtransfnexpr = (Expr *) fexpr;
  }
  else
   *invtransfnexpr = ((void*)0);
 }
}
