#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tp_name; } ;
struct TYPE_5__ {int hash; int /*<<< orphan*/ * fields; int /*<<< orphan*/ * names; } ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_AttributeError ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(PyArray_Descr *self, PyObject *val)
{
    int N = 0;
    int i;
    PyObject *new_names;
    PyObject *new_fields;

    if (val == NULL) {
        FUNC7(PyExc_AttributeError,
                "Cannot delete dtype names attribute");
        return -1;
    }
    if (!FUNC0(self)) {
        FUNC7(PyExc_ValueError,
                "there are no fields defined");
        return -1;
    }

    /*
     * FIXME
     *
     * This deprecation has been temporarily removed for the NumPy 1.7
     * release. It should be re-added after the 1.7 branch is done,
     * and a convenience API to replace the typical use-cases for
     * mutable names should be implemented.
     *
     * if (DEPRECATE("Setting NumPy dtype names is deprecated, the dtype "
     *                "will become immutable in a future version") < 0) {
     *     return -1;
     * }
     */

    N = FUNC13(self->names);
    if (!FUNC9(val) || FUNC8((PyObject *)val) != N) {
        FUNC6(PyExc_ValueError,
                "must replace all names at once with a sequence of length %d",
                N);
        return -1;
    }
    /* Make sure all entries are strings */
    for (i = 0; i < N; i++) {
        PyObject *item;
        int valid = 1;
        item = FUNC10(val, i);
        valid = FUNC14(item);
        FUNC15(item);
        if (!valid) {
            FUNC6(PyExc_ValueError,
                    "item #%d of names is of type %s and not string",
                    i, FUNC16(item)->tp_name);
            return -1;
        }
    }
    /* Invalidate cached hash value */
    self->hash = -1;
    /* Update dictionary keys in fields */
    new_names = FUNC11(val);
    new_fields = FUNC3();
    for (i = 0; i < N; i++) {
        PyObject *key;
        PyObject *item;
        PyObject *new_key;
        int ret;
        key = FUNC12(self->names, i);
        /* Borrowed references to item and new_key */
        item = FUNC2(self->fields, key);
        new_key = FUNC12(new_names, i);
        /* Check for duplicates */
        ret = FUNC1(new_fields, new_key);
        if (ret != 0) {
            if (ret < 0) {
                FUNC5();
            }
            FUNC7(PyExc_ValueError, "Duplicate field names given.");
            FUNC15(new_names);
            FUNC15(new_fields);
            return -1;
        }
        FUNC4(new_fields, new_key, item);
    }

    /* Replace names */
    FUNC15(self->names);
    self->names = new_names;

    /* Replace fields */
    FUNC15(self->fields);
    self->fields = new_fields;

    return 0;
}