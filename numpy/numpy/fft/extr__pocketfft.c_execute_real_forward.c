
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rfft_plan ;
typedef int npy_intp ;
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
 int PyArray_DIM (int *,int) ;
 int* PyArray_DIMS (int *) ;
 int PyArray_DescrFromType (int ) ;
 scalar_t__ PyArray_Empty (int,int*,int ,int ) ;
 scalar_t__ PyArray_FromAny (int *,int ,int,int ,int,int *) ;
 int PyArray_NDIM (int *) ;
 int PyArray_SIZE (int *) ;
 int * PyErr_NoMemory () ;
 int Py_BEGIN_ALLOW_THREADS ;
 int Py_DECREF (int *) ;
 int Py_END_ALLOW_THREADS ;
 int Py_XDECREF (int *) ;
 int destroy_rfft_plan (int *) ;
 int free (int*) ;
 int * make_rfft_plan (int) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,double*,int) ;
 scalar_t__ rfft_forward (int *,double*,double) ;

__attribute__((used)) static PyObject *
execute_real_forward(PyObject *a1, double fct)
{
    rfft_plan plan=((void*)0);
    int fail = 0;
    PyArrayObject *data = (PyArrayObject *)PyArray_FromAny(a1,
            PyArray_DescrFromType(NPY_DOUBLE), 1, 0,
            NPY_ARRAY_DEFAULT | NPY_ARRAY_ENSUREARRAY | NPY_ARRAY_FORCECAST,
            ((void*)0));
    if (!data) return ((void*)0);

    int ndim = PyArray_NDIM(data);
    const npy_intp *odim = PyArray_DIMS(data);
    int npts = odim[ndim - 1];
    npy_intp *tdim=(npy_intp *)malloc(ndim*sizeof(npy_intp));
    if (!tdim)
      { Py_XDECREF(data); return ((void*)0); }
    for (int d=0; d<ndim-1; ++d)
      tdim[d] = odim[d];
    tdim[ndim-1] = npts/2 + 1;
    PyArrayObject *ret = (PyArrayObject *)PyArray_Empty(ndim,
            tdim, PyArray_DescrFromType(NPY_CDOUBLE), 0);
    free(tdim);
    if (!ret) fail=1;
    if (!fail) {
      int rstep = PyArray_DIM(ret, PyArray_NDIM(ret) - 1)*2;

      int nrepeats = PyArray_SIZE(data)/npts;
      double *rptr = (double *)PyArray_DATA(ret),
             *dptr = (double *)PyArray_DATA(data);

      Py_BEGIN_ALLOW_THREADS;
      NPY_SIGINT_ON;
      plan = make_rfft_plan(npts);
      if (!plan) fail=1;
      if (!fail)
        for (int i = 0; i < nrepeats; i++) {
            rptr[rstep-1] = 0.0;
            memcpy((char *)(rptr+1), dptr, npts*sizeof(double));
            if (rfft_forward(plan, rptr+1, fct)!=0) {fail=1; break;}
            rptr[0] = rptr[1];
            rptr[1] = 0.0;
            rptr += rstep;
            dptr += npts;
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
