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
struct TYPE_2__ {int /*<<< orphan*/  true_divide; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ * (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ *)) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  array_inplace_true_divide ; 
 TYPE_1__ n_ops ; 
 int /*<<< orphan*/  nb_true_divide ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC6(PyArrayObject *m1, PyObject *m2)
{
    PyObject *res;

    FUNC0(m1, m2, nb_true_divide, array_true_divide);
    if (FUNC1(m1) &&
            (FUNC4(m1) || FUNC3(m1)) &&
            FUNC5(m1, m2, &array_inplace_true_divide, &res, 0)) {
        return res;
    }
    return FUNC2(m1, m2, n_ops.true_divide);
}