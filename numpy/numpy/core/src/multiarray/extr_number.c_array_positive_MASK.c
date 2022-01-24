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
struct TYPE_2__ {int /*<<< orphan*/  positive; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 TYPE_1__ n_ops ; 

__attribute__((used)) static PyObject *
FUNC10(PyArrayObject *m1)
{
    /*
     * For backwards compatibility, where + just implied a copy,
     * we cannot just call n_ops.positive.  Instead, we do the following
     * 1. Try n_ops.positive
     * 2. If we get an exception, check whether __array_ufunc__ is
     *    overridden; if so, we live in the future and we allow the
     *    TypeError to be passed on.
     * 3. If not, give a deprecation warning and return a copy.
     */
    PyObject *value;
    if (FUNC9(m1)) {
        value = FUNC2(m1, n_ops.positive);
    }
    else {
        value = FUNC3(m1, n_ops.positive);
    }
    if (value == NULL) {
        /*
         * We first fetch the error, as it needs to be clear to check
         * for the override.  When the deprecation is removed,
         * this whole stanza can be deleted.
         */
        PyObject *exc, *val, *tb;
        FUNC5(&exc, &val, &tb);
        if (FUNC7((PyObject *)m1)) {
            FUNC6(exc, val, tb);
            return NULL;
        }
        FUNC8(exc);
        FUNC8(val);
        FUNC8(tb);

        /* 2018-06-28, 1.16.0 */
        if (FUNC0("Applying '+' to a non-numerical array is "
                      "ill-defined. Returning a copy, but in the future "
                      "this will error.") < 0) {
            return NULL;
        }
        value = FUNC4((PyArrayObject *)FUNC1(m1));
    }
    return value;
}