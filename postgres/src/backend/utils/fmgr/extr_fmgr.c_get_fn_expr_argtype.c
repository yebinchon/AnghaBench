
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fn_expr; } ;
typedef int Oid ;
typedef TYPE_1__ FmgrInfo ;


 int InvalidOid ;
 int get_call_expr_argtype (int ,int) ;

Oid
get_fn_expr_argtype(FmgrInfo *flinfo, int argnum)
{




 if (!flinfo || !flinfo->fn_expr)
  return InvalidOid;

 return get_call_expr_argtype(flinfo->fn_expr, argnum);
}
