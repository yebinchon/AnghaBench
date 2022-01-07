
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int Datum ;


 int PointerGetDatum (int *) ;
 scalar_t__ palloc (int) ;

Datum
Float8GetDatum(float8 X)
{
 float8 *retval = (float8 *) palloc(sizeof(float8));

 *retval = X;
 return PointerGetDatum(retval);
}
