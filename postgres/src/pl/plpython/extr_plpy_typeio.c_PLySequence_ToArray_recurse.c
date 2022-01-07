
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* func ) (TYPE_1__*,int *,int*,int) ;} ;
typedef int PyObject ;
typedef TYPE_1__ PLyObToDatum ;
typedef int Datum ;


 int ERROR ;
 int * PySequence_GetItem (int *,int) ;
 int PySequence_Length (int *) ;
 int Py_XDECREF (int *) ;
 int ereport (int ,int ) ;
 int errdetail (char*) ;
 int errmsg (char*,int,int) ;
 int stub1 (TYPE_1__*,int *,int*,int) ;

__attribute__((used)) static void
PLySequence_ToArray_recurse(PLyObToDatum *elm, PyObject *list,
       int *dims, int ndim, int dim,
       Datum *elems, bool *nulls, int *currelem)
{
 int i;

 if (PySequence_Length(list) != dims[dim])
  ereport(ERROR,
    (errmsg("wrong length of inner sequence: has length %d, but %d was expected",
      (int) PySequence_Length(list), dims[dim]),
     (errdetail("To construct a multidimensional array, the inner sequences must all have the same length."))));

 if (dim < ndim - 1)
 {
  for (i = 0; i < dims[dim]; i++)
  {
   PyObject *sublist = PySequence_GetItem(list, i);

   PLySequence_ToArray_recurse(elm, sublist, dims, ndim, dim + 1,
          elems, nulls, currelem);
   Py_XDECREF(sublist);
  }
 }
 else
 {
  for (i = 0; i < dims[dim]; i++)
  {
   PyObject *obj = PySequence_GetItem(list, i);

   elems[*currelem] = elm->func(elm, obj, &nulls[*currelem], 1);
   Py_XDECREF(obj);
   (*currelem)++;
  }
 }
}
