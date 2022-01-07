
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ndim; int dim1; scalar_t__ lbound1; int elemtype; scalar_t__ dataoffset; int values; } ;
typedef TYPE_1__ int2vector ;
typedef int int16 ;


 int INT2OID ;
 int Int2VectorSize (int) ;
 int SET_VARSIZE (TYPE_1__*,int ) ;
 int memcpy (int ,int const*,int) ;
 scalar_t__ palloc0 (int ) ;

int2vector *
buildint2vector(const int16 *int2s, int n)
{
 int2vector *result;

 result = (int2vector *) palloc0(Int2VectorSize(n));

 if (n > 0 && int2s)
  memcpy(result->values, int2s, n * sizeof(int16));





 SET_VARSIZE(result, Int2VectorSize(n));
 result->ndim = 1;
 result->dataoffset = 0;
 result->elemtype = INT2OID;
 result->dim1 = n;
 result->lbound1 = 0;

 return result;
}
