
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 int InputFunctionCall (int *,char*,int ,int ) ;
 int fmgr_info (int ,int *) ;

Datum
OidInputFunctionCall(Oid functionId, char *str, Oid typioparam, int32 typmod)
{
 FmgrInfo flinfo;

 fmgr_info(functionId, &flinfo);
 return InputFunctionCall(&flinfo, str, typioparam, typmod);
}
