#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * rfft_plan ;
typedef  int npy_intp ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int NPY_ARRAY_DEFAULT ; 
 int NPY_ARRAY_ENSUREARRAY ; 
 int NPY_ARRAY_FORCECAST ; 
 int /*<<< orphan*/  NPY_CDOUBLE ; 
 int /*<<< orphan*/  NPY_DOUBLE ; 
 int /*<<< orphan*/  NPY_SIGINT_OFF ; 
 int /*<<< orphan*/  NPY_SIGINT_ON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  Py_BEGIN_ALLOW_THREADS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_END_ALLOW_THREADS ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int*) ; 
 int /*<<< orphan*/ * FUNC13 (int) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (char*,double*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,double*,double) ; 

__attribute__((used)) static PyObject *
FUNC17(PyObject *a1, double fct)
{
    rfft_plan plan=NULL;
    int fail = 0;
    PyArrayObject *data = (PyArrayObject *)FUNC5(a1,
            FUNC3(NPY_DOUBLE), 1, 0,
            NPY_ARRAY_DEFAULT | NPY_ARRAY_ENSUREARRAY | NPY_ARRAY_FORCECAST,
            NULL);
    if (!data) return NULL;

    int ndim = FUNC6(data);
    const npy_intp *odim = FUNC2(data);
    int npts = odim[ndim - 1];
    npy_intp *tdim=(npy_intp *)FUNC14(ndim*sizeof(npy_intp));
    if (!tdim)
      { FUNC10(data); return NULL; }
    for (int d=0; d<ndim-1; ++d)
      tdim[d] = odim[d];
    tdim[ndim-1] = npts/2 + 1;
    PyArrayObject *ret = (PyArrayObject *)FUNC4(ndim,
            tdim, FUNC3(NPY_CDOUBLE), 0);
    FUNC12(tdim);
    if (!ret) fail=1;
    if (!fail) {
      int rstep = FUNC1(ret, FUNC6(ret) - 1)*2;

      int nrepeats = FUNC7(data)/npts;
      double *rptr = (double *)FUNC0(ret),
             *dptr = (double *)FUNC0(data);

      Py_BEGIN_ALLOW_THREADS;
      NPY_SIGINT_ON;
      plan = FUNC13(npts);
      if (!plan) fail=1;
      if (!fail)
        for (int i = 0; i < nrepeats; i++) {
            rptr[rstep-1] = 0.0;
            FUNC15((char *)(rptr+1), dptr, npts*sizeof(double));
            if (FUNC16(plan, rptr+1, fct)!=0) {fail=1; break;}
            rptr[0] = rptr[1];
            rptr[1] = 0.0;
            rptr += rstep;
            dptr += npts;
      }
      if (plan) FUNC11(plan);
      NPY_SIGINT_OFF;
      Py_END_ALLOW_THREADS;
    }
    if (fail) {
      FUNC10(data);
      FUNC10(ret);
      return FUNC8();
    }
    FUNC9(data);
    return (PyObject *)ret;
}