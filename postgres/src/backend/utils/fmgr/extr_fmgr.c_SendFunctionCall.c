
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;
typedef int FmgrInfo ;
typedef int Datum ;


 int * DatumGetByteaP (int ) ;
 int FunctionCall1 (int *,int ) ;

bytea *
SendFunctionCall(FmgrInfo *flinfo, Datum val)
{
 return DatumGetByteaP(FunctionCall1(flinfo, val));
}
