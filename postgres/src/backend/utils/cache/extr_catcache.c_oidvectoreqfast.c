
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int DatumGetBool (int ) ;
 int DirectFunctionCall2 (int ,int ,int ) ;
 int oidvectoreq ;

__attribute__((used)) static bool
oidvectoreqfast(Datum a, Datum b)
{
 return DatumGetBool(DirectFunctionCall2(oidvectoreq, a, b));
}
