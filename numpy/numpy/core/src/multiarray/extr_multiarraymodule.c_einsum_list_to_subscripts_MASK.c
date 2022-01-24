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
typedef  scalar_t__ npy_intp ;
typedef  int npy_bool ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_ValueError ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Py_Ellipsis ; 

__attribute__((used)) static int
FUNC8(PyObject *obj, char *subscripts, int subsize)
{
    int ellipsis = 0, subindex = 0;
    npy_intp i, size;
    PyObject *item;

    obj = FUNC4(obj, "the subscripts for each operand must "
                               "be a list or a tuple");
    if (obj == NULL) {
        return -1;
    }
    size = FUNC6(obj);


    for (i = 0; i < size; ++i) {
        item = FUNC5(obj, i);
        /* Ellipsis */
        if (item == Py_Ellipsis) {
            if (ellipsis) {
                FUNC0(PyExc_ValueError,
                        "each subscripts list may have only one ellipsis");
                FUNC7(obj);
                return -1;
            }
            if (subindex + 3 >= subsize) {
                FUNC0(PyExc_ValueError,
                        "subscripts list is too long");
                FUNC7(obj);
                return -1;
            }
            subscripts[subindex++] = '.';
            subscripts[subindex++] = '.';
            subscripts[subindex++] = '.';
            ellipsis = 1;
        }
        /* Subscript */
        else if (FUNC2(item) || FUNC3(item)) {
            long s = FUNC1(item);
            npy_bool bad_input = 0;

            if (subindex + 1 >= subsize) {
                FUNC0(PyExc_ValueError,
                        "subscripts list is too long");
                FUNC7(obj);
                return -1;
            }

            if ( s < 0 ) {
                bad_input = 1;
            }
            else if (s < 26) {
                subscripts[subindex++] = 'A' + (char)s;
            }
            else if (s < 2*26) {
                subscripts[subindex++] = 'a' + (char)s - 26;
            }
            else {
                bad_input = 1;
            }

            if (bad_input) {
                FUNC0(PyExc_ValueError,
                        "subscript is not within the valid range [0, 52)");
                FUNC7(obj);
                return -1;
            }
        }
        /* Invalid */
        else {
            FUNC0(PyExc_ValueError,
                    "each subscript must be either an integer "
                    "or an ellipsis");
            FUNC7(obj);
            return -1;
        }
    }

    FUNC7(obj);

    return subindex;
}