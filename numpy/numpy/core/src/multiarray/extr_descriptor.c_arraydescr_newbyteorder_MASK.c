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

/* Variables and functions */
 char NPY_SWAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyArray_ByteorderConverter ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static PyObject *
FUNC2(PyArray_Descr *self, PyObject *args)
{
    char endian=NPY_SWAP;

    if (!FUNC0(args, "|O&:newbyteorder", PyArray_ByteorderConverter,
                &endian)) {
        return NULL;
    }
    return (PyObject *)FUNC1(self, endian);
}