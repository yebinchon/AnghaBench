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
typedef  int /*<<< orphan*/  PyArrayObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC11(PyArrayObject *self)
{
    PyObject *dict;
    PyObject *obj;

    dict = FUNC1();
    if (dict == NULL) {
        return NULL;
    }

    if (FUNC6(self) < 0) {
        FUNC4(dict);
        return NULL;
    }

    /* dataptr */
    obj = FUNC5(self);
    FUNC2(dict, "data", obj);
    FUNC4(obj);

    obj = FUNC8(self);
    FUNC2(dict, "strides", obj);
    FUNC4(obj);

    obj = FUNC7(self);
    FUNC2(dict, "descr", obj);
    FUNC4(obj);

    obj = FUNC10(FUNC0(self));
    FUNC2(dict, "typestr", obj);
    FUNC4(obj);

    obj = FUNC9(self);
    FUNC2(dict, "shape", obj);
    FUNC4(obj);

    obj = FUNC3(3);
    FUNC2(dict, "version", obj);
    FUNC4(obj);

    return dict;
}