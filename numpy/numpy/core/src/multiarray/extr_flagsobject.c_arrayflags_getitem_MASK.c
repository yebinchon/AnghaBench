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
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 

__attribute__((used)) static PyObject *
FUNC21(PyArrayFlagsObject *self, PyObject *ind)
{
    char *key = NULL;
    char buf[16];
    int n;
    if (FUNC5(ind)) {
        PyObject *tmp_str;
        tmp_str = FUNC4(ind);
        if (tmp_str == NULL) {
            return NULL;
        }
        key = FUNC0(tmp_str);
        n = FUNC2(tmp_str);
        if (n > 16) {
            FUNC6(tmp_str);
            goto fail;
        }
        FUNC19(buf, key, n);
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
    switch(n) {
    case 1:
        switch(key[0]) {
        case 'C':
            return FUNC10(self);
        case 'F':
            return FUNC14(self);
        case 'W':
            return FUNC17(self);
        case 'B':
            return FUNC8(self);
        case 'O':
            return FUNC15(self);
        case 'A':
            return FUNC7(self);
        case 'X':
            return FUNC18(self);
        case 'U':
            return FUNC16(self);
        default:
            goto fail;
        }
        break;
    case 2:
        if (FUNC20(key, "CA", n) == 0) {
            return FUNC9(self);
        }
        if (FUNC20(key, "FA", n) == 0) {
            return FUNC11(self);
        }
        break;
    case 3:
        if (FUNC20(key, "FNC", n) == 0) {
            return FUNC12(self);
        }
        break;
    case 4:
        if (FUNC20(key, "FORC", n) == 0) {
            return FUNC13(self);
        }
        break;
    case 6:
        if (FUNC20(key, "CARRAY", n) == 0) {
            return FUNC9(self);
        }
        if (FUNC20(key, "FARRAY", n) == 0) {
            return FUNC11(self);
        }
        break;
    case 7:
        if (FUNC20(key,"FORTRAN",n) == 0) {
            return FUNC14(self);
        }
        if (FUNC20(key,"BEHAVED",n) == 0) {
            return FUNC8(self);
        }
        if (FUNC20(key,"OWNDATA",n) == 0) {
            return FUNC15(self);
        }
        if (FUNC20(key,"ALIGNED",n) == 0) {
            return FUNC7(self);
        }
        break;
    case 9:
        if (FUNC20(key,"WRITEABLE",n) == 0) {
            return FUNC17(self);
        }
        break;
    case 10:
        if (FUNC20(key,"CONTIGUOUS",n) == 0) {
            return FUNC10(self);
        }
        break;
    case 12:
        if (FUNC20(key, "UPDATEIFCOPY", n) == 0) {
            return FUNC16(self);
        }
        if (FUNC20(key, "C_CONTIGUOUS", n) == 0) {
            return FUNC10(self);
        }
        if (FUNC20(key, "F_CONTIGUOUS", n) == 0) {
            return FUNC14(self);
        }
        break;
    case 15:
        if (FUNC20(key, "WRITEBACKIFCOPY", n) == 0) {
            return FUNC18(self);
        }
        break;
    }

 fail:
    FUNC3(PyExc_KeyError, "Unknown flag");
    return NULL;
}