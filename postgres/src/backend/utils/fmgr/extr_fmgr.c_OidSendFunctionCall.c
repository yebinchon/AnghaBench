
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 int * SendFunctionCall (int *,int ) ;
 int fmgr_info (int ,int *) ;

bytea *
OidSendFunctionCall(Oid functionId, Datum val)
{
 FmgrInfo flinfo;

 fmgr_info(functionId, &flinfo);
 return SendFunctionCall(&flinfo, val);
}
