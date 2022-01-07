
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 int FunctionCall3Coll (int *,int ,int ,int ,int ) ;
 int fmgr_info (int ,int *) ;

Datum
OidFunctionCall3Coll(Oid functionId, Oid collation, Datum arg1, Datum arg2,
      Datum arg3)
{
 FmgrInfo flinfo;

 fmgr_info(functionId, &flinfo);

 return FunctionCall3Coll(&flinfo, collation, arg1, arg2, arg3);
}
