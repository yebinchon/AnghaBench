#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ fields; int /*<<< orphan*/  type_num; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ Py_None ; 

__attribute__((used)) static PyObject *
FUNC2(PyArray_Descr *self)
{
    long val;
    val = 0;
    if (self->fields == Py_None) {
        val = 1;
    }
    if (FUNC1(self->type_num)) {
        val = 2;
    }
    return FUNC0(val);
}