
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float4 ;
typedef int Datum ;


 int PointerGetDatum (int *) ;
 scalar_t__ palloc (int) ;

Datum
Float4GetDatum(float4 X)
{
 float4 *retval = (float4 *) palloc(sizeof(float4));

 *retval = X;
 return PointerGetDatum(retval);
}
