
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
typedef TYPE_1__ RangeObject ;
typedef int Py_ssize_t ;
typedef int PySliceObject_T ;
typedef int PyObject ;


 long PyLong_AsLong (int *) ;
 scalar_t__ PyLong_Check (int *) ;
 scalar_t__ PySlice_Check (int *) ;
 scalar_t__ PySlice_GetIndicesEx (int *,scalar_t__,int*,int*,int*,int*) ;
 int RAISE_INVALID_INDEX_TYPE (int *) ;
 int RangeAsItem (int *,long,int *) ;
 int RangeAsSlice (int *,int,int,int *) ;

__attribute__((used)) static Py_ssize_t
RangeAsSubscript(PyObject *self, PyObject *idx, PyObject *val)
{
    if (PyLong_Check(idx))
    {
 long n = PyLong_AsLong(idx);
 return RangeAsItem(self, n, val);
    } else if (PySlice_Check(idx))
    {
 Py_ssize_t start, stop, step, slicelen;

 if (PySlice_GetIndicesEx((PySliceObject_T *)idx,
  ((RangeObject *)(self))->end-((RangeObject *)(self))->start+1,
  &start, &stop,
  &step, &slicelen) < 0)
 {
     return -1;
 }
 return RangeAsSlice(self, start, stop, val);
    }
    else
    {
 RAISE_INVALID_INDEX_TYPE(idx);
 return -1;
    }
}
