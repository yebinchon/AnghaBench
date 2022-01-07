
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 char* OutputFunctionCall (int *,int ) ;
 int fmgr_info (int ,int *) ;

char *
OidOutputFunctionCall(Oid functionId, Datum val)
{
 FmgrInfo flinfo;

 fmgr_info(functionId, &flinfo);
 return OutputFunctionCall(&flinfo, val);
}
