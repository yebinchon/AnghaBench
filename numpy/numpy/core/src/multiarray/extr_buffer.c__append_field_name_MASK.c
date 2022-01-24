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
typedef  int /*<<< orphan*/  _tmp_string_t ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char) ; 

__attribute__((used)) static int
FUNC7(_tmp_string_t *str, PyObject *name)
{
    int ret = -1;
    char *p;
    Py_ssize_t len;
    PyObject *tmp;
#if defined(NPY_PY3K)
    /* FIXME: XXX -- should it use UTF-8 here? */
    tmp = PyUnicode_AsUTF8String(name);
#else
    tmp = name;
    FUNC4(tmp);
#endif
    if (tmp == NULL || FUNC0(tmp, &p, &len) < 0) {
        FUNC1();
        FUNC2(PyExc_ValueError, "invalid field name");
        goto fail;
    }
    if (FUNC6(str, ':') < 0) {
        goto fail;
    }
    while (len > 0) {
        if (*p == ':') {
            FUNC2(PyExc_ValueError,
                            "':' is not an allowed character in buffer "
                            "field names");
            goto fail;
        }
        if (FUNC6(str, *p) < 0) {
            goto fail;
        }
        ++p;
        --len;
    }
    if (FUNC6(str, ':') < 0) {
        goto fail;
    }
    ret = 0;
fail:
    FUNC5(tmp);
    return ret;
}