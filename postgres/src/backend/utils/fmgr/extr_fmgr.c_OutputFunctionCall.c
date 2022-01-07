
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FmgrInfo ;
typedef int Datum ;


 char* DatumGetCString (int ) ;
 int FunctionCall1 (int *,int ) ;

char *
OutputFunctionCall(FmgrInfo *flinfo, Datum val)
{
 return DatumGetCString(FunctionCall1(flinfo, val));
}
