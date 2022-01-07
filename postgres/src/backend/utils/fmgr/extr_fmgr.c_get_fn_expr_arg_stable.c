
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fn_expr; } ;
typedef TYPE_1__ FmgrInfo ;


 int get_call_expr_arg_stable (int ,int) ;

bool
get_fn_expr_arg_stable(FmgrInfo *flinfo, int argnum)
{




 if (!flinfo || !flinfo->fn_expr)
  return 0;

 return get_call_expr_arg_stable(flinfo->fn_expr, argnum);
}
