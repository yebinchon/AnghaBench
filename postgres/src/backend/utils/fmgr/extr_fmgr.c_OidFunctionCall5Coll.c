
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 int FunctionCall5Coll (int *,int ,int ,int ,int ,int ,int ) ;
 int fmgr_info (int ,int *) ;

Datum
OidFunctionCall5Coll(Oid functionId, Oid collation, Datum arg1, Datum arg2,
      Datum arg3, Datum arg4, Datum arg5)
{
 FmgrInfo flinfo;

 fmgr_info(functionId, &flinfo);

 return FunctionCall5Coll(&flinfo, collation, arg1, arg2, arg3, arg4, arg5);
}
