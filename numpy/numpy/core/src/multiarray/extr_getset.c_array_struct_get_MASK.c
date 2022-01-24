#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  npy_intp ;
struct TYPE_8__ {int /*<<< orphan*/  elsize; int /*<<< orphan*/  kind; } ;
struct TYPE_7__ {int two; int nd; int flags; int /*<<< orphan*/ * descr; int /*<<< orphan*/  data; int /*<<< orphan*/ * strides; int /*<<< orphan*/ * shape; int /*<<< orphan*/  itemsize; int /*<<< orphan*/  typekind; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  TYPE_1__ PyArrayInterface ;

/* Variables and functions */
 int NPY_ARRAY_NOTSWAPPED ; 
 int NPY_ARRAY_OWNDATA ; 
 int NPY_ARRAY_UPDATEIFCOPY ; 
 int NPY_ARRAY_WRITEBACKIFCOPY ; 
 int NPY_ARR_HAS_DESCR ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  gentype_struct_free ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static PyObject *
FUNC18(PyArrayObject *self)
{
    PyArrayInterface *inter;
    PyObject *ret;

    if (FUNC6(self)) {
        if (FUNC15(self) < 0) {
            return NULL;
        }
    }
    inter = (PyArrayInterface *)FUNC10(sizeof(PyArrayInterface));
    if (inter==NULL) {
        return FUNC13();
    }
    inter->two = 2;
    inter->nd = FUNC7(self);
    inter->typekind = FUNC2(self)->kind;
    inter->itemsize = FUNC2(self)->elsize;
    inter->flags = FUNC4(self);
    /* reset unused flags */
    inter->flags &= ~(NPY_ARRAY_WRITEBACKIFCOPY | NPY_ARRAY_UPDATEIFCOPY |NPY_ARRAY_OWNDATA);
    if (FUNC5(self)) inter->flags |= NPY_ARRAY_NOTSWAPPED;
    /*
     * Copy shape and strides over since these can be reset
     *when the array is "reshaped".
     */
    if (FUNC7(self) > 0) {
        inter->shape = (npy_intp *)FUNC10(2*sizeof(npy_intp)*FUNC7(self));
        if (inter->shape == NULL) {
            FUNC9(inter);
            return FUNC13();
        }
        inter->strides = inter->shape + FUNC7(self);
        if (FUNC7(self)) {
            FUNC17(inter->shape, FUNC3(self), sizeof(npy_intp)*FUNC7(self));
            FUNC17(inter->strides, FUNC8(self), sizeof(npy_intp)*FUNC7(self));
        }
    }
    else {
        inter->shape = NULL;
        inter->strides = NULL;
    }
    inter->data = FUNC1(self);
    if (FUNC11(FUNC2(self))) {
        inter->descr = FUNC16(FUNC2(self));
        if (inter->descr == NULL) {
            FUNC12();
        }
        else {
            inter->flags &= NPY_ARR_HAS_DESCR;
        }
    }
    else {
        inter->descr = NULL;
    }
    FUNC14(self);
    ret = FUNC0(inter, self, gentype_struct_free);
    return ret;
}