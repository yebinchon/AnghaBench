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
struct TYPE_3__ {int ntypes; int nin; int nout; int /*<<< orphan*/ * types; } ;
typedef  TYPE_1__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int) ; 
 char FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static PyObject *
FUNC6(PyUFuncObject *ufunc)
{
    /* return a list with types grouped input->output */
    PyObject *list;
    PyObject *str;
    int k, j, n, nt = ufunc->ntypes;
    int ni = ufunc->nin;
    int no = ufunc->nout;
    char *t;
    list = FUNC2(nt);
    if (list == NULL) {
        return NULL;
    }
    t = FUNC1(no+ni+2);
    n = 0;
    for (k = 0; k < nt; k++) {
        for (j = 0; j<ni; j++) {
            t[j] = FUNC5(ufunc->types[n]);
            n++;
        }
        t[ni] = '-';
        t[ni+1] = '>';
        for (j = 0; j < no; j++) {
            t[ni + 2 + j] = FUNC5(ufunc->types[n]);
            n++;
        }
        str = FUNC4(t, no + ni + 2);
        FUNC3(list, k, str);
    }
    FUNC0(t);
    return list;
}