
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ start; scalar_t__ end; } ;
typedef TYPE_1__ RangeObject ;
typedef int Py_ssize_t ;
typedef int PySliceObject_T ;
typedef int PyObject ;


 long PyLong_AsLong (int *) ;
 scalar_t__ PyLong_Check (int *) ;
 scalar_t__ PySlice_Check (int *) ;
 scalar_t__ PySlice_GetIndicesEx (int *,scalar_t__,int *,int *,int *,int *) ;
 int RAISE_INVALID_INDEX_TYPE (int *) ;
 int * RangeItem (TYPE_1__*,long) ;
 int * RangeSlice (TYPE_1__*,int ,int ) ;

__attribute__((used)) static PyObject *
RangeSubscript(PyObject *self, PyObject* idx)
{
    if (PyLong_Check(idx))
    {
 long _idx = PyLong_AsLong(idx);
 return RangeItem((RangeObject *)(self), _idx);
    } else if (PySlice_Check(idx))
    {
 Py_ssize_t start, stop, step, slicelen;

 if (PySlice_GetIndicesEx((PySliceObject_T *)idx,
  ((RangeObject *)(self))->end-((RangeObject *)(self))->start+1,
  &start, &stop,
  &step, &slicelen) < 0)
 {
     return ((void*)0);
 }
 return RangeSlice((RangeObject *)(self), start, stop);
    }
    else
    {
 RAISE_INVALID_INDEX_TYPE(idx);
 return ((void*)0);
    }
}
