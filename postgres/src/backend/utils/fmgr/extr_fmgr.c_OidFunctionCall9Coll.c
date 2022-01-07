
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 int FunctionCall9Coll (int *,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int fmgr_info (int ,int *) ;

Datum
OidFunctionCall9Coll(Oid functionId, Oid collation, Datum arg1, Datum arg2,
      Datum arg3, Datum arg4, Datum arg5,
      Datum arg6, Datum arg7, Datum arg8,
      Datum arg9)
{
 FmgrInfo flinfo;

 fmgr_info(functionId, &flinfo);

 return FunctionCall9Coll(&flinfo, collation, arg1, arg2, arg3, arg4, arg5,
        arg6, arg7, arg8, arg9);
}
