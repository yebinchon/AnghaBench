
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 int FunctionCall0Coll (int *,int ) ;
 int fmgr_info (int ,int *) ;

Datum
OidFunctionCall0Coll(Oid functionId, Oid collation)
{
 FmgrInfo flinfo;

 fmgr_info(functionId, &flinfo);

 return FunctionCall0Coll(&flinfo, collation);
}
