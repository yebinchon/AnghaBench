#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  flags; void* data; int /*<<< orphan*/ * base; } ;
struct TYPE_5__ {scalar_t__ len; void* buf; } ;
typedef  scalar_t__ Py_ssize_t ;
typedef  TYPE_1__ Py_buffer ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_2__ PyArrayObject_fields ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  NPY_ARRAY_CARRAY ; 
 int NPY_ARRAY_OWNDATA ; 
 int NPY_ARRAY_UPDATEIFCOPY ; 
 int NPY_ARRAY_WRITEABLE ; 
 int NPY_ARRAY_WRITEBACKIFCOPY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int PyBUF_SIMPLE ; 
 int PyBUF_WRITABLE ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,void const**,scalar_t__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,void**,scalar_t__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC20(PyArrayObject *self, PyObject *op)
{
    void *buf;
    Py_ssize_t buf_len;
    int writeable=1;
#if defined(NPY_PY3K)
    Py_buffer view;
#endif

    /* 2016-19-02, 1.12 */
    int ret = FUNC0("Assigning the 'data' attribute is an "
                        "inherently unsafe operation and will "
                        "be removed in the future.");
    if (ret < 0) {
        return -1;
    }

    if (op == NULL) {
        FUNC13(PyExc_AttributeError,
                "Cannot delete array data");
        return -1;
    }
#if defined(NPY_PY3K)
    if (PyObject_GetBuffer(op, &view, PyBUF_WRITABLE|PyBUF_SIMPLE) < 0) {
        writeable = 0;
        PyErr_Clear();
        if (PyObject_GetBuffer(op, &view, PyBUF_SIMPLE) < 0) {
            return -1;
        }
    }
    buf = view.buf;
    buf_len = view.len;
    /*
     * In Python 3 both of the deprecated functions PyObject_AsWriteBuffer and
     * PyObject_AsReadBuffer that this code replaces release the buffer. It is
     * up to the object that supplies the buffer to guarantee that the buffer
     * sticks around after the release.
     */
    PyBuffer_Release(&view);
    _dealloc_cached_buffer_info(op);
#else
    if (FUNC15(op, &buf, &buf_len) < 0) {
        FUNC12();
        writeable = 0;
        if (FUNC14(op, (const void **)&buf, &buf_len) < 0) {
            FUNC12();
            FUNC13(PyExc_AttributeError,
                    "object does not have single-segment buffer interface");
            return -1;
        }
    }
#endif
    if (!FUNC6(self)) {
        FUNC13(PyExc_AttributeError,
                "cannot set single-segment buffer for discontiguous array");
        return -1;
    }
    if (FUNC7(self) > buf_len) {
        FUNC13(PyExc_AttributeError, "not enough data for array");
        return -1;
    }
    if (FUNC5(self) & NPY_ARRAY_OWNDATA) {
        FUNC9(self);
        FUNC11(FUNC3(self));
    }
    if (FUNC1(self)) {
        if ((FUNC5(self) & NPY_ARRAY_WRITEBACKIFCOPY) ||
            (FUNC5(self) & NPY_ARRAY_UPDATEIFCOPY)) {
            FUNC4((PyArrayObject *)FUNC1(self),
                                                NPY_ARRAY_WRITEABLE);
            FUNC2(self, NPY_ARRAY_WRITEBACKIFCOPY);
            FUNC2(self, NPY_ARRAY_UPDATEIFCOPY);
        }
        FUNC17(FUNC1(self));
        ((PyArrayObject_fields *)self)->base = NULL;
    }
    FUNC18(op);
    if (FUNC8(self, op) < 0) {
        return -1;
    }
    ((PyArrayObject_fields *)self)->data = buf;
    ((PyArrayObject_fields *)self)->flags = NPY_ARRAY_CARRAY;
    if (!writeable) {
        FUNC2(self, ~NPY_ARRAY_WRITEABLE);
    }
    return 0;
}