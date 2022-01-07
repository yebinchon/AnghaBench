
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int alignment; int type; int kind; } ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int PyArg_ParseTuple (int *,char*,int *,int **) ;
 int * PyArray_BASE (int *) ;
 int PyArray_DATA (int *) ;
 TYPE_1__* PyArray_DESCR (int *) ;
 int PyArray_DIM (int *,int) ;
 int PyArray_FLAGS (int *) ;
 int PyArray_ITEMSIZE (int *) ;
 int PyArray_NDIM (int *) ;
 int PyArray_STRIDE (int *,int) ;
 int PyArray_TYPE (int *) ;
 int PyArray_Type ;
 int PyInt_FromLong (int ) ;
 int * PyTuple_New (int) ;
 int PyTuple_SetItem (int *,int,int ) ;
 int * Py_BuildValue (char*,char*,int,int *,int *,int *,int ,int ,int ,int ,int ,int ,int ) ;
 int * Py_None ;
 int memset (char*,int ,int) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static PyObject *f2py_rout_wrap_attrs(PyObject *capi_self,
                                      PyObject *capi_args) {
  PyObject *arr_capi = Py_None;
  PyArrayObject *arr = ((void*)0);
  PyObject *dimensions = ((void*)0);
  PyObject *strides = ((void*)0);
  char s[100];
  int i;
  memset(s,0,100*sizeof(char));
  if (!PyArg_ParseTuple(capi_args,"O!|:wrap.attrs",
                        &PyArray_Type,&arr_capi))
    return ((void*)0);
  arr = (PyArrayObject *)arr_capi;
  sprintf(s,"%p",PyArray_DATA(arr));
  dimensions = PyTuple_New(PyArray_NDIM(arr));
  strides = PyTuple_New(PyArray_NDIM(arr));
  for (i=0;i<PyArray_NDIM(arr);++i) {
    PyTuple_SetItem(dimensions,i,PyInt_FromLong(PyArray_DIM(arr,i)));
    PyTuple_SetItem(strides,i,PyInt_FromLong(PyArray_STRIDE(arr,i)));
  }
  return Py_BuildValue("siNNO(cciii)ii",s,PyArray_NDIM(arr),
                       dimensions,strides,
                       (PyArray_BASE(arr)==((void*)0)?Py_None:PyArray_BASE(arr)),
                       PyArray_DESCR(arr)->kind,
                       PyArray_DESCR(arr)->type,
                       PyArray_TYPE(arr),
                       PyArray_ITEMSIZE(arr),
                       PyArray_DESCR(arr)->alignment,
                       PyArray_FLAGS(arr),
                       PyArray_ITEMSIZE(arr));
}
