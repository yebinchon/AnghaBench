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
struct TYPE_2__ {int /*<<< orphan*/  maximum; int /*<<< orphan*/  minimum; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ n_ops ; 

__attribute__((used)) static PyObject *
FUNC4(PyArrayObject *self, PyObject *min, PyObject *max, PyArrayObject *out)
{
    PyObject *res1=NULL, *res2=NULL;

    if (max != NULL) {
        res1 = FUNC3(self, max, out, n_ops.minimum);
        if (res1 == NULL) {
            return NULL;
        }
    }
    else {
        res1 = (PyObject *)self;
        FUNC1(res1);
    }

    if (min != NULL) {
        res2 = FUNC3((PyArrayObject *)res1,
                                         min, out, n_ops.maximum);
        if (res2 == NULL) {
            FUNC2(res1);
            return NULL;
        }
    }
    else {
        res2 = res1;
        FUNC1(res2);
    }
    FUNC0(res1);
    return res2;
}