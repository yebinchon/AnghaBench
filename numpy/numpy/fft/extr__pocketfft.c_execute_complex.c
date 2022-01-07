
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * cfft_plan ;
typedef int PyObject ;
typedef int PyArrayObject ;


 int NPY_ARRAY_DEFAULT ;
 int NPY_ARRAY_ENSUREARRAY ;
 int NPY_ARRAY_ENSURECOPY ;
 int NPY_ARRAY_FORCECAST ;
 int NPY_CDOUBLE ;
 int NPY_SIGINT_OFF ;
 int NPY_SIGINT_ON ;
 scalar_t__ PyArray_DATA (int *) ;
 int PyArray_DIM (int *,scalar_t__) ;
 int PyArray_DescrFromType (int ) ;
 scalar_t__ PyArray_FromAny (int *,int ,int,int ,int,int *) ;
 scalar_t__ PyArray_NDIM (int *) ;
 int PyArray_SIZE (int *) ;
 int * PyErr_NoMemory () ;
 int Py_BEGIN_ALLOW_THREADS ;
 int Py_END_ALLOW_THREADS ;
 int Py_XDECREF (int *) ;
 int cfft_backward (int *,double*,double) ;
 int cfft_forward (int *,double*,double) ;
 int destroy_cfft_plan (int *) ;
 int * make_cfft_plan (int) ;

__attribute__((used)) static PyObject *
execute_complex(PyObject *a1, int is_forward, double fct)
{
    PyArrayObject *data = (PyArrayObject *)PyArray_FromAny(a1,
            PyArray_DescrFromType(NPY_CDOUBLE), 1, 0,
            NPY_ARRAY_ENSURECOPY | NPY_ARRAY_DEFAULT |
            NPY_ARRAY_ENSUREARRAY | NPY_ARRAY_FORCECAST,
            ((void*)0));
    if (!data) return ((void*)0);

    int npts = PyArray_DIM(data, PyArray_NDIM(data) - 1);
    cfft_plan plan=((void*)0);

    int nrepeats = PyArray_SIZE(data)/npts;
    double *dptr = (double *)PyArray_DATA(data);
    int fail=0;
    Py_BEGIN_ALLOW_THREADS;
    NPY_SIGINT_ON;
    plan = make_cfft_plan(npts);
    if (!plan) fail=1;
    if (!fail)
      for (int i = 0; i < nrepeats; i++) {
          int res = is_forward ?
            cfft_forward(plan, dptr, fct) : cfft_backward(plan, dptr, fct);
          if (res!=0) { fail=1; break; }
          dptr += npts*2;
      }
    if (plan) destroy_cfft_plan(plan);
    NPY_SIGINT_OFF;
    Py_END_ALLOW_THREADS;
    if (fail) {
      Py_XDECREF(data);
      return PyErr_NoMemory();
    }
    return (PyObject *)data;
}
