
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PySliceObject_T ;
typedef int PyObject ;
typedef int ListObject ;


 int ListAssIndex (int *,long,int *) ;
 int ListAssSlice (int *,int,int,int,int *) ;
 int ListLength (int *) ;
 long PyInt_AsLong (int *) ;
 scalar_t__ PyInt_Check (int *) ;
 long PyLong_AsLong (int *) ;
 scalar_t__ PyLong_Check (int *) ;
 scalar_t__ PySlice_Check (int *) ;
 scalar_t__ PySlice_GetIndicesEx (int *,int ,int*,int*,int*,int*) ;
 int RAISE_INVALID_INDEX_TYPE (int *) ;

__attribute__((used)) static Py_ssize_t
ListAssItem(ListObject *self, PyObject *idx, PyObject *obj)
{

    if (PyInt_Check(idx))
    {
 long _idx = PyInt_AsLong(idx);
 return ListAssIndex(self, _idx, obj);
    }
    else

    if (PyLong_Check(idx))
    {
 long _idx = PyLong_AsLong(idx);
 return ListAssIndex(self, _idx, obj);
    }
    else if (PySlice_Check(idx))
    {
 Py_ssize_t start, stop, step, slicelen;

 if (PySlice_GetIndicesEx((PySliceObject_T *)idx, ListLength(self),
     &start, &stop, &step, &slicelen) < 0)
     return -1;
 return ListAssSlice(self, start, step, slicelen,
  obj);
    }
    else
    {
 RAISE_INVALID_INDEX_TYPE(idx);
 return -1;
    }
}
