
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int TypeFuncClass ;
typedef int TupleDesc ;
struct TYPE_5__ {scalar_t__ resultinfo; TYPE_1__* flinfo; } ;
struct TYPE_4__ {int fn_expr; int fn_oid; } ;
typedef int ReturnSetInfo ;
typedef int Oid ;
typedef TYPE_2__* FunctionCallInfo ;


 int internal_get_result_type (int ,int ,int *,int *,int *) ;

TypeFuncClass
get_call_result_type(FunctionCallInfo fcinfo,
      Oid *resultTypeId,
      TupleDesc *resultTupleDesc)
{
 return internal_get_result_type(fcinfo->flinfo->fn_oid,
         fcinfo->flinfo->fn_expr,
         (ReturnSetInfo *) fcinfo->resultinfo,
         resultTypeId,
         resultTupleDesc);
}
