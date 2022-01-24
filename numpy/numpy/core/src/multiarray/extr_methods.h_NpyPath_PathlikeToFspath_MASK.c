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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static inline PyObject *
FUNC4(PyObject *file)
{
    static PyObject *os_PathLike = NULL;
    static PyObject *os_fspath = NULL;
    FUNC3("numpy.compat", "os_PathLike", &os_PathLike);
    if (os_PathLike == NULL) {
        return NULL;
    }
    FUNC3("numpy.compat", "os_fspath", &os_fspath);
    if (os_fspath == NULL) {
        return NULL;
    }

    if (!FUNC1(file, os_PathLike)) {
        FUNC2(file);
        return file;
    }
    return FUNC0(os_fspath, file, NULL);
}