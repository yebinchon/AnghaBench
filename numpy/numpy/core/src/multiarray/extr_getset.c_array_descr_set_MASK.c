#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_3__ ;
typedef  struct TYPE_32__   TYPE_1__ ;

/* Type definitions */
typedef  int npy_intp ;
struct TYPE_33__ {int* dimensions; int nd; int* strides; TYPE_1__* descr; } ;
struct TYPE_32__ {scalar_t__ type_num; int elsize; } ;
typedef  TYPE_1__ PyObject ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  TYPE_3__ PyArrayObject_fields ;
typedef  TYPE_1__ PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  NPY_ARRAY_UPDATE_ALL ; 
 scalar_t__ NPY_VOID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_1__*,int,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 TYPE_1__* FUNC16 (TYPE_1__*,char*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*) ; 

__attribute__((used)) static int
FUNC22(PyArrayObject *self, PyObject *arg)
{
    PyArray_Descr *newtype = NULL;

    if (arg == NULL) {
        FUNC15(PyExc_AttributeError,
                "Cannot delete array dtype");
        return -1;
    }

    if (!(FUNC5(arg, &newtype)) ||
        newtype == NULL) {
        FUNC15(PyExc_TypeError,
                "invalid data-type for array");
        return -1;
    }

    /* check that we are not reinterpreting memory containing Objects. */
    if (FUNC19(FUNC2(self)) || FUNC19(newtype)) {
        static PyObject *checkfunc = NULL;
        PyObject *safe;

        FUNC20("numpy.core._internal", "_view_is_safe", &checkfunc);
        if (checkfunc == NULL) {
            goto fail;
        }

        safe = FUNC16(checkfunc, "OO",
                                     FUNC2(self), newtype);
        if (safe == NULL) {
            goto fail;
        }
        FUNC17(safe);
    }

    /*
     * Viewing as an unsized void implies a void dtype matching the size of the
     * current dtype.
     */
    if (newtype->type_num == NPY_VOID &&
            FUNC14(newtype) &&
            newtype->elsize != FUNC2(self)->elsize) {
        FUNC3(newtype);
        if (newtype == NULL) {
            return -1;
        }
        newtype->elsize = FUNC2(self)->elsize;
    }

    /* Changing the size of the dtype results in a shape change */
    if (newtype->elsize != FUNC2(self)->elsize) {
        int axis;
        npy_intp newdim;

        /* forbidden cases */
        if (FUNC9(self) == 0) {
            FUNC15(PyExc_ValueError,
                    "Changing the dtype of a 0d array is only supported "
                    "if the itemsize is unchanged");
            goto fail;
        }
        else if (FUNC13(newtype)) {
            FUNC15(PyExc_ValueError,
                    "Changing the dtype to a subarray type is only supported "
                    "if the total itemsize is unchanged");
            goto fail;
        }

        /* determine which axis to resize */
        if (FUNC7(self)) {
            axis = FUNC9(self) - 1;
        }
        else if (FUNC8(self)) {
            /* 2015-11-27 1.11.0, gh-6747 */
            if (FUNC0(
                        "Changing the shape of an F-contiguous array by "
                        "descriptor assignment is deprecated. To maintain the "
                        "Fortran contiguity of a multidimensional Fortran "
                        "array, use 'a.T.view(...).T' instead") < 0) {
                goto fail;
            }
            axis = 0;
        }
        else {
            /* Don't mention the deprecated F-contiguous support */
            FUNC15(PyExc_ValueError,
                    "To change to a dtype of a different size, the array must "
                    "be C-contiguous");
            goto fail;
        }

        if (newtype->elsize < FUNC2(self)->elsize) {
            /* if it is compatible, increase the size of the relevant axis */
            if (newtype->elsize == 0 ||
                    FUNC2(self)->elsize % newtype->elsize != 0) {
                FUNC15(PyExc_ValueError,
                        "When changing to a smaller dtype, its size must be a "
                        "divisor of the size of original dtype");
                goto fail;
            }
            newdim = FUNC2(self)->elsize / newtype->elsize;
            FUNC4(self)[axis] *= newdim;
            FUNC11(self)[axis] = newtype->elsize;
        }
        else if (newtype->elsize > FUNC2(self)->elsize) {
            /* if it is compatible, decrease the size of the relevant axis */
            newdim = FUNC4(self)[axis] * FUNC2(self)->elsize;
            if ((newdim % newtype->elsize) != 0) {
                FUNC15(PyExc_ValueError,
                        "When changing to a larger dtype, its size must be a "
                        "divisor of the total size in bytes of the last axis "
                        "of the array.");
                goto fail;
            }
            FUNC4(self)[axis] = newdim / newtype->elsize;
            FUNC11(self)[axis] = newtype->elsize;
        }
    }

    /* Viewing as a subarray increases the number of dimensions */
    if (FUNC13(newtype)) {
        /*
         * create new array object from data and update
         * dimensions, strides and descr from it
         */
        PyArrayObject *temp;
        /*
         * We would decref newtype here.
         * temp will steal a reference to it
         */
        temp = (PyArrayObject *)
            FUNC10(&PyArray_Type, newtype, FUNC9(self),
                                 FUNC4(self), FUNC11(self),
                                 FUNC1(self), FUNC6(self), NULL);
        if (temp == NULL) {
            return -1;
        }
        FUNC21(self);
        ((PyArrayObject_fields *)self)->dimensions = FUNC4(temp);
        ((PyArrayObject_fields *)self)->nd = FUNC9(temp);
        ((PyArrayObject_fields *)self)->strides = FUNC11(temp);
        newtype = FUNC2(temp);
        FUNC18(FUNC2(temp));
        /* Fool deallocator not to delete these*/
        ((PyArrayObject_fields *)temp)->nd = 0;
        ((PyArrayObject_fields *)temp)->dimensions = NULL;
        FUNC17(temp);
    }

    FUNC17(FUNC2(self));
    ((PyArrayObject_fields *)self)->descr = newtype;
    FUNC12(self, NPY_ARRAY_UPDATE_ALL);
    return 0;

 fail:
    FUNC17(newtype);
    return -1;
}