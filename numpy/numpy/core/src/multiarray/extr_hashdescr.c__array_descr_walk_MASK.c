#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  subarray; int /*<<< orphan*/ * fields; int /*<<< orphan*/  names; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * Py_None ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC5(PyArray_Descr* descr, PyObject *l)
{
    int st;

    if (FUNC4(descr)) {
        return FUNC1(descr, l);
    }
    else {
        if(descr->fields != NULL && descr->fields != Py_None) {
            st = FUNC2(descr->names, descr->fields, l);
            if (st) {
                return -1;
            }
        }
        if(FUNC0(descr)) {
            st = FUNC3(descr->subarray, l);
            if (st) {
                return -1;
            }
        }
    }

    return 0;
}