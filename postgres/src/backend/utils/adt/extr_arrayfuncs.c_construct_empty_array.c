
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int elemtype; scalar_t__ dataoffset; scalar_t__ ndim; } ;
typedef int Oid ;
typedef TYPE_1__ ArrayType ;


 int SET_VARSIZE (TYPE_1__*,int) ;
 scalar_t__ palloc0 (int) ;

ArrayType *
construct_empty_array(Oid elmtype)
{
 ArrayType *result;

 result = (ArrayType *) palloc0(sizeof(ArrayType));
 SET_VARSIZE(result, sizeof(ArrayType));
 result->ndim = 0;
 result->dataoffset = 0;
 result->elemtype = elmtype;
 return result;
}
