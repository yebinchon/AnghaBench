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
typedef  int /*<<< orphan*/ * cfft_plan ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int NPY_ARRAY_DEFAULT ; 
 int NPY_ARRAY_ENSUREARRAY ; 
 int NPY_ARRAY_ENSURECOPY ; 
 int NPY_ARRAY_FORCECAST ; 
 int /*<<< orphan*/  NPY_CDOUBLE ; 
 int /*<<< orphan*/  NPY_SIGINT_OFF ; 
 int /*<<< orphan*/  NPY_SIGINT_ON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  Py_BEGIN_ALLOW_THREADS ; 
 int /*<<< orphan*/  Py_END_ALLOW_THREADS ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,double*,double) ; 
 int FUNC9 (int /*<<< orphan*/ *,double*,double) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int) ; 

__attribute__((used)) static PyObject *
FUNC12(PyObject *a1, int is_forward, double fct)
{
    PyArrayObject *data = (PyArrayObject *)FUNC3(a1,
            FUNC2(NPY_CDOUBLE), 1, 0,
            NPY_ARRAY_ENSURECOPY | NPY_ARRAY_DEFAULT |
            NPY_ARRAY_ENSUREARRAY | NPY_ARRAY_FORCECAST,
            NULL);
    if (!data) return NULL;

    int npts = FUNC1(data, FUNC4(data) - 1);
    cfft_plan plan=NULL;

    int nrepeats = FUNC5(data)/npts;
    double *dptr = (double *)FUNC0(data);
    int fail=0;
    Py_BEGIN_ALLOW_THREADS;
    NPY_SIGINT_ON;
    plan = FUNC11(npts);
    if (!plan) fail=1;
    if (!fail)
      for (int i = 0; i < nrepeats; i++) {
          int res = is_forward ?
            FUNC9(plan, dptr, fct) : FUNC8(plan, dptr, fct);
          if (res!=0) { fail=1; break; }
          dptr += npts*2;
      }
    if (plan) FUNC10(plan);
    NPY_SIGINT_OFF;
    Py_END_ALLOW_THREADS;
    if (fail) {
      FUNC7(data);
      return FUNC6();
    }
    return (PyObject *)data;
}