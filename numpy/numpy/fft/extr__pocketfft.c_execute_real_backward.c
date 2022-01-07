
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rfft_plan ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_ARRAY_DEFAULT ;
 int NPY_ARRAY_ENSUREARRAY ;
 int NPY_ARRAY_FORCECAST ;
 int NPY_CDOUBLE ;
 int NPY_DOUBLE ;
 int NPY_SIGINT_OFF ;
 int NPY_SIGINT_ON ;
 scalar_t__ PyArray_DATA (int *) ;
 int PyArray_DIM (int *,scalar_t__) ;
 int PyArray_DIMS (int *) ;
 int PyArray_DescrFromType (int ) ;
 scalar_t__ PyArray_Empty (scalar_t__,int ,int ,int ) ;
 scalar_t__ PyArray_FromAny (int *,int ,int,int ,int,int *) ;
 scalar_t__ PyArray_NDIM (int *) ;
 int PyArray_SIZE (int *) ;
 int * PyErr_NoMemory () ;
 int Py_BEGIN_ALLOW_THREADS ;
 int Py_DECREF (int *) ;
 int Py_END_ALLOW_THREADS ;
 int Py_XDECREF (int *) ;
 int destroy_rfft_plan (int *) ;
 int * make_rfft_plan (int) ;
 int memcpy (char*,double*,int) ;
 scalar_t__ rfft_backward (int *,double*,double) ;

__attribute__((used)) static PyObject *
execute_real_backward(PyObject *a1, double fct)
{
    rfft_plan plan=((void*)0);
    PyArrayObject *data = (PyArrayObject *)PyArray_FromAny(a1,
            PyArray_DescrFromType(NPY_CDOUBLE), 1, 0,
            NPY_ARRAY_DEFAULT | NPY_ARRAY_ENSUREARRAY | NPY_ARRAY_FORCECAST,
            ((void*)0));
    if (!data) return ((void*)0);
    int npts = PyArray_DIM(data, PyArray_NDIM(data) - 1);
    PyArrayObject *ret = (PyArrayObject *)PyArray_Empty(PyArray_NDIM(data),
            PyArray_DIMS(data), PyArray_DescrFromType(NPY_DOUBLE), 0);
    int fail = 0;
    if (!ret) fail=1;
    if (!fail) {
      int nrepeats = PyArray_SIZE(ret)/npts;
      double *rptr = (double *)PyArray_DATA(ret),
             *dptr = (double *)PyArray_DATA(data);

      Py_BEGIN_ALLOW_THREADS;
      NPY_SIGINT_ON;
      plan = make_rfft_plan(npts);
      if (!plan) fail=1;
      if (!fail) {
        for (int i = 0; i < nrepeats; i++) {
          memcpy((char *)(rptr + 1), (dptr + 2), (npts - 1)*sizeof(double));
          rptr[0] = dptr[0];
          if (rfft_backward(plan, rptr, fct)!=0) {fail=1; break;}
          rptr += npts;
          dptr += npts*2;
        }
      }
      if (plan) destroy_rfft_plan(plan);
      NPY_SIGINT_OFF;
      Py_END_ALLOW_THREADS;
    }
    if (fail) {
      Py_XDECREF(data);
      Py_XDECREF(ret);
      return PyErr_NoMemory();
    }
    Py_DECREF(data);
    return (PyObject *)ret;
}
