#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  alignment; int /*<<< orphan*/  elsize; int /*<<< orphan*/  flags; int /*<<< orphan*/  kind; int /*<<< orphan*/  byteorder; } ;
typedef  scalar_t__ Py_ssize_t ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  TYPE_1__ PyArray_Descr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PyExc_SystemError ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(PyArray_Descr* descr, PyObject *l)
{
    Py_ssize_t i;
    PyObject *t, *item;
    char nbyteorder = FUNC6(descr->byteorder);

    /*
     * For builtin type, hash relies on : kind + byteorder + flags +
     * type_num + elsize + alignment
     */
    t = FUNC4("(cccii)", descr->kind, nbyteorder,
            descr->flags, descr->elsize, descr->alignment);

    for(i = 0; i < FUNC3(t); ++i) {
        item = FUNC2(t, i);
        if (item == NULL) {
            FUNC0(PyExc_SystemError,
                    "(Hash) Error while computing builting hash");
            goto clean_t;
        }
        FUNC1(l, item);
    }

    FUNC5(t);
    return 0;

clean_t:
    FUNC5(t);
    return -1;
}