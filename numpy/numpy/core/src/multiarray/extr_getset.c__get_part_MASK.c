#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int type_num; int /*<<< orphan*/  byteorder; } ;
struct TYPE_8__ {int elsize; int /*<<< orphan*/  byteorder; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
#define  NPY_CDOUBLE 130 
#define  NPY_CFLOAT 129 
#define  NPY_CLONGDOUBLE 128 
 int NPY_DOUBLE ; 
 int NPY_FLOAT ; 
 int NPY_LONGDOUBLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int) ; 
 TYPE_1__* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyArrayObject *
FUNC13(PyArrayObject *self, int imag)
{
    int float_type_num;
    PyArray_Descr *type;
    PyArrayObject *ret;
    int offset;

    switch (FUNC1(self)->type_num) {
        case NPY_CFLOAT:
            float_type_num = NPY_FLOAT;
            break;
        case NPY_CDOUBLE:
            float_type_num = NPY_DOUBLE;
            break;
        case NPY_CLONGDOUBLE:
            float_type_num = NPY_LONGDOUBLE;
            break;
        default:
            FUNC10(PyExc_ValueError,
                     "Cannot convert complex type number %d to float",
                     FUNC1(self)->type_num);
            return NULL;

    }
    type = FUNC3(float_type_num);

    offset = (imag ? type->elsize : 0);

    if (!FUNC6(FUNC1(self)->byteorder)) {
        PyArray_Descr *new;
        new = FUNC4(type);
        new->byteorder = FUNC1(self)->byteorder;
        FUNC11(type);
        type = new;
    }
    ret = (PyArrayObject *)FUNC8(
            FUNC12(self),
            type,
            FUNC7(self),
            FUNC2(self),
            FUNC9(self),
            FUNC0(self) + offset,
            FUNC5(self), (PyObject *)self, (PyObject *)self);
    if (ret == NULL) {
        return NULL;
    }
    return ret;
}