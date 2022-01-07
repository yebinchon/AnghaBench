
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int PointerGetDatum (int *) ;

__attribute__((used)) static Datum
leftmostvalue_numeric(void)
{
 return PointerGetDatum(((void*)0));
}
