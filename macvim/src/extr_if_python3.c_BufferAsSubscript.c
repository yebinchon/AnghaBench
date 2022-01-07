
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* buf; } ;
struct TYPE_7__ {scalar_t__ ml_line_count; } ;
struct TYPE_8__ {TYPE_1__ b_ml; } ;
typedef int Py_ssize_t ;
typedef int PySliceObject_T ;
typedef int PyObject ;
typedef int PyInt ;
typedef TYPE_3__ BufferObject ;


 scalar_t__ CheckBuffer (TYPE_3__*) ;
 long PyLong_AsLong (int *) ;
 scalar_t__ PyLong_Check (int *) ;
 scalar_t__ PySlice_Check (int *) ;
 scalar_t__ PySlice_GetIndicesEx (int *,int,int*,int*,int*,int*) ;
 int RAISE_INVALID_INDEX_TYPE (int *) ;
 int RBAsItem (TYPE_3__*,long,int *,int,int,int *) ;
 int RBAsSlice (TYPE_3__*,int,int,int *,int,int ,int *) ;

__attribute__((used)) static Py_ssize_t
BufferAsSubscript(PyObject *self, PyObject* idx, PyObject* val)
{
    if (PyLong_Check(idx))
    {
 long n = PyLong_AsLong(idx);
 return RBAsItem((BufferObject *)(self), n, val, 1,
      (Py_ssize_t)((BufferObject *)(self))->buf->b_ml.ml_line_count,
      ((void*)0));
    } else if (PySlice_Check(idx))
    {
 Py_ssize_t start, stop, step, slicelen;

 if (CheckBuffer((BufferObject *) self))
     return -1;

 if (PySlice_GetIndicesEx((PySliceObject_T *)idx,
       (Py_ssize_t)((BufferObject *)(self))->buf->b_ml.ml_line_count,
       &start, &stop,
       &step, &slicelen) < 0)
 {
     return -1;
 }
 return RBAsSlice((BufferObject *)(self), start, stop, val, 1,
     (PyInt)((BufferObject *)(self))->buf->b_ml.ml_line_count,
     ((void*)0));
    }
    else
    {
 RAISE_INVALID_INDEX_TYPE(idx);
 return -1;
    }
}
