#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ npy_off_t ;
typedef  scalar_t__ npy_intp ;
struct TYPE_5__ {scalar_t__ elsize; } ;
typedef  TYPE_1__ PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_BEGIN_ALLOW_THREADS ; 
 int /*<<< orphan*/  NPY_END_ALLOW_THREADS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PyArray_Type ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_IOError ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyArrayObject *
FUNC7(FILE *fp, PyArray_Descr *dtype, npy_intp num, size_t *nread)
{
    PyArrayObject *r;
    npy_off_t start, numbytes;
    int elsize;

    if (num < 0) {
        int fail = 0;
        start = FUNC6(fp);
        if (start < 0) {
            fail = 1;
        }
        if (FUNC5(fp, 0, SEEK_END) < 0) {
            fail = 1;
        }
        numbytes = FUNC6(fp);
        if (numbytes < 0) {
            fail = 1;
        }
        numbytes -= start;
        if (FUNC5(fp, start, SEEK_SET) < 0) {
            fail = 1;
        }
        if (fail) {
            FUNC2(PyExc_IOError,
                            "could not seek in file");
            FUNC3(dtype);
            return NULL;
        }
        num = numbytes / dtype->elsize;
    }

    /*
     * Array creation may move sub-array dimensions from the dtype to array
     * dimensions, so we need to use the original element size when reading.
     */
    elsize = dtype->elsize;

    r = (PyArrayObject *)FUNC1(&PyArray_Type, dtype, 1, &num,
                                              NULL, NULL, 0, NULL);
    if (r == NULL) {
        return NULL;
    }

    NPY_BEGIN_ALLOW_THREADS;
    *nread = FUNC4(FUNC0(r), elsize, num, fp);
    NPY_END_ALLOW_THREADS;
    return r;
}