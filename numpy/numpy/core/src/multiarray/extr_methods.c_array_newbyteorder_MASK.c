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

/* Variables and functions */
 char NPY_SWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyArray_ByteorderConverter ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyObject *
FUNC4(PyArrayObject *self, PyObject *args)
{
    char endian = NPY_SWAP;
    PyArray_Descr *new;

    if (!FUNC0(args, "|O&:newbyteorder", PyArray_ByteorderConverter,
                          &endian)) {
        return NULL;
    }
    new = FUNC2(FUNC1(self), endian);
    if (!new) {
        return NULL;
    }
    return FUNC3(self, new, NULL);

}