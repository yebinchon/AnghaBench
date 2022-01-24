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
typedef  int /*<<< orphan*/  PyArrayFlagsObject ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_KeyError ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 scalar_t__ FUNC12 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC13(PyArrayFlagsObject *self, PyObject *ind, PyObject *item)
{
    char *key;
    char buf[16];
    int n;
    if (FUNC5(ind)) {
        PyObject *tmp_str;
        tmp_str = FUNC4(ind);
        key = FUNC0(tmp_str);
        n = FUNC2(tmp_str);
        if (n > 16) n = 16;
        FUNC11(buf, key, n);
        FUNC6(tmp_str);
        key = buf;
    }
    else if (FUNC1(ind)) {
        key = FUNC0(ind);
        n = FUNC2(ind);
    }
    else {
        goto fail;
    }
    if (((n==9) && (FUNC12(key, "WRITEABLE", n) == 0)) ||
        ((n==1) && (FUNC12(key, "W", n) == 0))) {
        return FUNC9(self, item);
    }
    else if (((n==7) && (FUNC12(key, "ALIGNED", n) == 0)) ||
             ((n==1) && (FUNC12(key, "A", n) == 0))) {
        return FUNC7(self, item);
    }
    else if (((n==12) && (FUNC12(key, "UPDATEIFCOPY", n) == 0)) ||
             ((n==1) && (FUNC12(key, "U", n) == 0))) {
        return FUNC8(self, item);
    }
    else if (((n==15) && (FUNC12(key, "WRITEBACKIFCOPY", n) == 0)) ||
             ((n==1) && (FUNC12(key, "X", n) == 0))) {
        return FUNC10(self, item);
    }

 fail:
    FUNC3(PyExc_KeyError, "Unknown flag");
    return -1;
}