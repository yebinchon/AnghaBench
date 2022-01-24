#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * tp_mro; } ;
typedef  TYPE_1__ PyTypeObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  NPY_OBJECT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static PyArray_Descr *
FUNC4(PyObject *type)
{
    PyObject *mro;
    mro = ((PyTypeObject *)type)->tp_mro;
    if (FUNC3(mro) < 2) {
        return FUNC0(NPY_OBJECT);
    }
    return FUNC1(FUNC2(mro, 1));
}