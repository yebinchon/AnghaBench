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
typedef  int Py_ssize_t ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,void**) ; 

__attribute__((used)) static Py_ssize_t
FUNC2(PyArrayObject *self, Py_ssize_t segment, void **ptrptr)
{
    if (FUNC0(self, "buffer source array") < 0) {
        return -1;
    }
    return FUNC1(self, segment, (void **) ptrptr);
}