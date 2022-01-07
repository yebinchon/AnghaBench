
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bits8 ;
struct TYPE_6__ {TYPE_3__* elm; } ;
struct TYPE_7__ {TYPE_1__ array; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef int PyObject ;
typedef TYPE_3__ PLyDatumToOb ;
typedef int Datum ;
typedef int ArrayType ;


 char* ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 int ARR_NDIM (int *) ;
 int * ARR_NULLBITMAP (int *) ;
 int Assert (int) ;
 int * DatumGetArrayTypeP (int ) ;
 int MAXDIM ;
 int * PLyList_FromArray_recurse (TYPE_3__*,int*,int,int ,char**,int **,int*) ;
 int * PyList_New (int ) ;

__attribute__((used)) static PyObject *
PLyList_FromArray(PLyDatumToOb *arg, Datum d)
{
 ArrayType *array = DatumGetArrayTypeP(d);
 PLyDatumToOb *elm = arg->u.array.elm;
 int ndim;
 int *dims;
 char *dataptr;
 bits8 *bitmap;
 int bitmask;

 if (ARR_NDIM(array) == 0)
  return PyList_New(0);


 ndim = ARR_NDIM(array);
 dims = ARR_DIMS(array);
 Assert(ndim < MAXDIM);
 dataptr = ARR_DATA_PTR(array);
 bitmap = ARR_NULLBITMAP(array);
 bitmask = 1;

 return PLyList_FromArray_recurse(elm, dims, ndim, 0,
          &dataptr, &bitmap, &bitmask);
}
