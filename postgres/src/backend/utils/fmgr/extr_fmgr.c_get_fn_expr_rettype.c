
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fn_expr; } ;
typedef int Oid ;
typedef int Node ;
typedef TYPE_1__ FmgrInfo ;


 int InvalidOid ;
 int exprType (int *) ;

Oid
get_fn_expr_rettype(FmgrInfo *flinfo)
{
 Node *expr;





 if (!flinfo || !flinfo->fn_expr)
  return InvalidOid;

 expr = flinfo->fn_expr;

 return exprType(expr);
}
