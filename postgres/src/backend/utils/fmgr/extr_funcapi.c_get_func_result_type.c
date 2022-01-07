
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TypeFuncClass ;
typedef int TupleDesc ;
typedef int Oid ;


 int internal_get_result_type (int ,int *,int *,int *,int *) ;

TypeFuncClass
get_func_result_type(Oid functionId,
      Oid *resultTypeId,
      TupleDesc *resultTupleDesc)
{
 return internal_get_result_type(functionId,
         ((void*)0),
         ((void*)0),
         resultTypeId,
         resultTupleDesc);
}
