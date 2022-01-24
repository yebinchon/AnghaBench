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
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  scalar_t__ NPY_ORDER ;
typedef  int /*<<< orphan*/  NPY_CASTING ;

/* Variables and functions */
 scalar_t__ NPY_ANYORDER ; 
 scalar_t__ NPY_CORDER ; 
 scalar_t__ NPY_FORTRANORDER ; 
 scalar_t__ NPY_KEEPORDER ; 
 int /*<<< orphan*/  NPY_UNSAFE_CASTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyArray_CastingConverter ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_DescrConverter ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  PyArray_OrderConverter ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC19(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    static char *kwlist[] = {"dtype", "order", "casting",
                             "subok", "copy", NULL};
    PyArray_Descr *dtype = NULL;
    /*
     * TODO: UNSAFE default for compatibility, I think
     *       switching to SAME_KIND by default would be good.
     */
    NPY_CASTING casting = NPY_UNSAFE_CASTING;
    NPY_ORDER order = NPY_KEEPORDER;
    int forcecopy = 1, subok = 1;

    if (!FUNC0(args, kwds, "O&|O&O&ii:astype", kwlist,
                            PyArray_DescrConverter, &dtype,
                            PyArray_OrderConverter, &order,
                            PyArray_CastingConverter, &casting,
                            &subok,
                            &forcecopy)) {
        FUNC17(dtype);
        return NULL;
    }

    /*
     * If the memory layout matches and, data types are equivalent,
     * and it's not a subtype if subok is False, then we
     * can skip the copy.
     */
    if (!forcecopy && (order == NPY_KEEPORDER ||
                       (order == NPY_ANYORDER &&
                            (FUNC7(self) ||
                            FUNC8(self))) ||
                       (order == NPY_CORDER &&
                            FUNC7(self)) ||
                       (order == NPY_FORTRANORDER &&
                            FUNC8(self))) &&
                    (subok || FUNC3(self)) &&
                    FUNC6(dtype, FUNC5(self))) {
        FUNC15(dtype);
        FUNC16(self);
        return (PyObject *)self;
    }
    else if (FUNC2(self, dtype, casting)) {
        PyArrayObject *ret;

        /* If the requested dtype is flexible, adapt it */
        dtype = FUNC1((PyObject *)self,
                                           FUNC5(self), dtype);
        if (dtype == NULL) {
            return NULL;
        }

        /* This steals the reference to dtype, so no DECREF of dtype */
        ret = (PyArrayObject *)FUNC9(
                                    self, order, dtype, subok);
        if (ret == NULL) {
            return NULL;
        }

        if (FUNC4(ret, self) < 0) {
            FUNC15(ret);
            return NULL;
        }

        return (PyObject *)ret;
    }
    else {
        PyObject *errmsg;
        errmsg = FUNC14("Cannot cast array from ");
        FUNC12(&errmsg,
                FUNC11((PyObject *)FUNC5(self)));
        FUNC12(&errmsg,
                FUNC14(" to "));
        FUNC12(&errmsg,
                FUNC11((PyObject *)dtype));
        FUNC12(&errmsg,
                FUNC13(" according to the rule %s",
                        FUNC18(casting)));
        FUNC10(PyExc_TypeError, errmsg);
        FUNC15(errmsg);
        FUNC15(dtype);
        return NULL;
    }
}