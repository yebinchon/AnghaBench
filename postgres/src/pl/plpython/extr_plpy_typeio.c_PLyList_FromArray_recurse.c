
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bits8 ;
struct TYPE_4__ {int typalign; int typlen; int * (* func ) (TYPE_1__*,int ) ;int typbyval; } ;
typedef int PyObject ;
typedef TYPE_1__ PLyDatumToOb ;
typedef int Datum ;


 int * PyList_New (int) ;
 int PyList_SET_ITEM (int *,int,int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;
 char* att_addlength_pointer (char*,int ,char*) ;
 scalar_t__ att_align_nominal (char*,int ) ;
 int fetch_att (char*,int ,int ) ;
 int * stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static PyObject *
PLyList_FromArray_recurse(PLyDatumToOb *elm, int *dims, int ndim, int dim,
        char **dataptr_p, bits8 **bitmap_p, int *bitmask_p)
{
 int i;
 PyObject *list;

 list = PyList_New(dims[dim]);
 if (!list)
  return ((void*)0);

 if (dim < ndim - 1)
 {

  for (i = 0; i < dims[dim]; i++)
  {
   PyObject *sublist;

   sublist = PLyList_FromArray_recurse(elm, dims, ndim, dim + 1,
            dataptr_p, bitmap_p, bitmask_p);
   PyList_SET_ITEM(list, i, sublist);
  }
 }
 else
 {




  char *dataptr = *dataptr_p;
  bits8 *bitmap = *bitmap_p;
  int bitmask = *bitmask_p;

  for (i = 0; i < dims[dim]; i++)
  {

   if (bitmap && (*bitmap & bitmask) == 0)
   {
    Py_INCREF(Py_None);
    PyList_SET_ITEM(list, i, Py_None);
   }
   else
   {
    Datum itemvalue;

    itemvalue = fetch_att(dataptr, elm->typbyval, elm->typlen);
    PyList_SET_ITEM(list, i, elm->func(elm, itemvalue));
    dataptr = att_addlength_pointer(dataptr, elm->typlen, dataptr);
    dataptr = (char *) att_align_nominal(dataptr, elm->typalign);
   }


   if (bitmap)
   {
    bitmask <<= 1;
    if (bitmask == 0x100 )
    {
     bitmap++;
     bitmask = 1;
    }
   }
  }

  *dataptr_p = dataptr;
  *bitmap_p = bitmap;
  *bitmask_p = bitmask;
 }

 return list;
}
