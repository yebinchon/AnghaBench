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
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  Py_BEGIN_ALLOW_THREADS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_END_ALLOW_THREADS ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (char*,double*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,double*,double) ; 

__attribute__((used)) static PyObject *
FUNC15(PyObject *a1, double fct)
{
    rfft_plan plan=NULL;
    PyArrayObject *data = (PyArrayObject *)FUNC5(a1,
            FUNC3(NPY_CDOUBLE), 1, 0,
            NPY_ARRAY_DEFAULT | NPY_ARRAY_ENSUREARRAY | NPY_ARRAY_FORCECAST,
            NULL);
    if (!data) return NULL;
    int npts = FUNC1(data, FUNC6(data) - 1);
    PyArrayObject *ret = (PyArrayObject *)FUNC4(FUNC6(data),
            FUNC2(data), FUNC3(NPY_DOUBLE), 0);
    int fail = 0;
    if (!ret) fail=1;
    if (!fail) {
      int nrepeats = FUNC7(ret)/npts;
      double *rptr = (double *)FUNC0(ret),
             *dptr = (double *)FUNC0(data);

      Py_BEGIN_ALLOW_THREADS;
      NPY_SIGINT_ON;
      plan = FUNC12(npts);
      if (!plan) fail=1;
      if (!fail) {
        for (int i = 0; i < nrepeats; i++) {
          FUNC13((char *)(rptr + 1), (dptr + 2), (npts - 1)*sizeof(double));
          rptr[0] = dptr[0];
          if (FUNC14(plan, rptr, fct)!=0) {fail=1; break;}
          rptr += npts;
          dptr += npts*2;
        }
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