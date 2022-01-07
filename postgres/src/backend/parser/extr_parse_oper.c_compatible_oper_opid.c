
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Operator ;
typedef int Oid ;
typedef int List ;


 int InvalidOid ;
 int ReleaseSysCache (int *) ;
 int * compatible_oper (int *,int *,int ,int ,int,int) ;
 int oprid (int *) ;

Oid
compatible_oper_opid(List *op, Oid arg1, Oid arg2, bool noError)
{
 Operator optup;
 Oid result;

 optup = compatible_oper(((void*)0), op, arg1, arg2, noError, -1);
 if (optup != ((void*)0))
 {
  result = oprid(optup);
  ReleaseSysCache(optup);
  return result;
 }
 return InvalidOid;
}
