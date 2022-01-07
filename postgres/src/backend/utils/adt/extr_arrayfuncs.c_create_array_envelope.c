
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ndim; int dataoffset; int elemtype; } ;
typedef int Oid ;
typedef TYPE_1__ ArrayType ;


 int ARR_DIMS (TYPE_1__*) ;
 int ARR_LBOUND (TYPE_1__*) ;
 int SET_VARSIZE (TYPE_1__*,int) ;
 int memcpy (int ,int*,int) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static ArrayType *
create_array_envelope(int ndims, int *dimv, int *lbsv, int nbytes,
       Oid elmtype, int dataoffset)
{
 ArrayType *result;

 result = (ArrayType *) palloc0(nbytes);
 SET_VARSIZE(result, nbytes);
 result->ndim = ndims;
 result->dataoffset = dataoffset;
 result->elemtype = elmtype;
 memcpy(ARR_DIMS(result), dimv, ndims * sizeof(int));
 memcpy(ARR_LBOUND(result), lbsv, ndims * sizeof(int));

 return result;
}
