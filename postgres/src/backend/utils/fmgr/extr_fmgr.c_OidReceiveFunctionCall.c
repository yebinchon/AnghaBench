
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int StringInfo ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;


 int ReceiveFunctionCall (int *,int ,int ,int ) ;
 int fmgr_info (int ,int *) ;

Datum
OidReceiveFunctionCall(Oid functionId, StringInfo buf,
        Oid typioparam, int32 typmod)
{
 FmgrInfo flinfo;

 fmgr_info(functionId, &flinfo);
 return ReceiveFunctionCall(&flinfo, buf, typioparam, typmod);
}
