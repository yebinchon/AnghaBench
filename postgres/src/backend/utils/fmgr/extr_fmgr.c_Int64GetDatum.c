
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int Datum ;


 int PointerGetDatum (int *) ;
 scalar_t__ palloc (int) ;

Datum
Int64GetDatum(int64 X)
{
 int64 *retval = (int64 *) palloc(sizeof(int64));

 *retval = X;
 return PointerGetDatum(retval);
}
