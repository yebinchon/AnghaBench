
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int CStringGetDatum (char*) ;
 int DirectFunctionCall1 (int ,int ) ;
 int inet_in ;

__attribute__((used)) static Datum
leftmostvalue_inet(void)
{
 return DirectFunctionCall1(inet_in, CStringGetDatum("0.0.0.0/0"));
}
