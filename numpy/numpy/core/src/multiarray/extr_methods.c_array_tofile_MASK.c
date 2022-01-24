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
typedef  int /*<<< orphan*/  npy_off_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char**,int /*<<< orphan*/ **,char**,char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Py_RETURN_NONE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static PyObject *
FUNC11(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    int own;
    PyObject *file;
    FILE *fd;
    char *sep = "";
    char *format = "";
    npy_off_t orig_pos = 0;
    static char *kwlist[] = {"file", "sep", "format", NULL};

    if (!FUNC1(args, kwds, "O|ss:tofile", kwlist,
                                     &file,
                                     &sep,
                                     &format)) {
        return NULL;
    }

    file = FUNC0(file);
    if (file == NULL) {
        return NULL;
    }
    if (FUNC3(file) || FUNC4(file)) {
        FUNC6(file, FUNC10(file, "wb"));
        if (file == NULL) {
            return NULL;
        }
        own = 1;
    }
    else {
        own = 0;
    }

    fd = FUNC8(file, "wb", &orig_pos);
    if (fd == NULL) {
        goto fail;
    }
    if (FUNC2(self, fd, sep, format) < 0) {
        goto fail;
    }
    if (FUNC9(file, fd, orig_pos) < 0) {
        goto fail;
    }
    if (own && FUNC7(file) < 0) {
        goto fail;
    }
    FUNC5(file);
    Py_RETURN_NONE;

fail:
    FUNC5(file);
    return NULL;
}