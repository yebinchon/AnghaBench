#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ntypes; char* types; int nargs; void** data; int /*<<< orphan*/ * functions; int /*<<< orphan*/ * userloops; } ;
struct TYPE_4__ {int* arg_types; struct TYPE_4__* next; void* data; int /*<<< orphan*/  func; } ;
typedef  TYPE_1__ PyUFunc_Loop1d ;
typedef  TYPE_2__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyUFuncGenericFunction ;
typedef  int /*<<< orphan*/  PyObject ;

/* Variables and functions */
 int NPY_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,char,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,char) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(PyUFuncObject *ufunc, int *otype,
                        PyUFuncGenericFunction *out_innerloop,
                        void **out_innerloopdata)
{
    int i;
    PyUFunc_Loop1d *funcdata;

    FUNC0("Getting binary op function for type number %d\n",
                                *otype);

    /* If the type is custom and there are userloops, search for it here */
    if (ufunc->userloops != NULL && FUNC6(*otype)) {
        PyObject *key, *obj;
        key = FUNC5(*otype);
        if (key == NULL) {
            return -1;
        }
        obj = FUNC4(ufunc->userloops, key);
        FUNC7(key);
        if (obj != NULL) {
            funcdata = (PyUFunc_Loop1d *)FUNC2(obj);
            while (funcdata != NULL) {
                int *types = funcdata->arg_types;

                if (types[0] == *otype && types[1] == *otype &&
                                                types[2] == *otype) {
                    *out_innerloop = funcdata->func;
                    *out_innerloopdata = funcdata->data;
                    return 0;
                }

                funcdata = funcdata->next;
            }
        }
    }

    /* Search for a function with compatible inputs */
    for (i = 0; i < ufunc->ntypes; ++i) {
        char *types = ufunc->types + i*ufunc->nargs;

        FUNC1("Trying loop with signature %d %d -> %d\n",
                                types[0], types[1], types[2]);

        if (FUNC3(*otype, types[0]) &&
                    types[0] == types[1] &&
                    (*otype == NPY_OBJECT || types[0] != NPY_OBJECT)) {
            /* If the signature is "xx->x", we found the loop */
            if (types[2] == types[0]) {
                *out_innerloop = ufunc->functions[i];
                *out_innerloopdata = ufunc->data[i];
                *otype = types[0];
                return 0;
            }
            /*
             * Otherwise, we found the natural type of the reduction,
             * replace otype and search again
             */
            else {
                *otype = types[2];
                break;
            }
        }
    }

    /* Search for the exact function */
    for (i = 0; i < ufunc->ntypes; ++i) {
        char *types = ufunc->types + i*ufunc->nargs;

        if (FUNC3(*otype, types[0]) &&
                    types[0] == types[1] &&
                    types[1] == types[2] &&
                    (*otype == NPY_OBJECT || types[0] != NPY_OBJECT)) {
            /* Since the signature is "xx->x", we found the loop */
            *out_innerloop = ufunc->functions[i];
            *out_innerloopdata = ufunc->data[i];
            *otype = types[0];
            return 0;
        }
    }

    return -1;
}