#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int type_num; } ;
struct TYPE_9__ {int nin; int nout; int /*<<< orphan*/  userloops; } ;
struct TYPE_8__ {int* arg_types; struct TYPE_8__* next; } ;
typedef  TYPE_1__ PyUFunc_Loop1d ;
typedef  TYPE_2__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  NPY_CASTING ;

/* Variables and functions */
 int NPY_NOTYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PyExc_TypeError ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ *,int*,char*,char*) ; 

__attribute__((used)) static int
FUNC10(PyUFuncObject *self,
                        int n_specified,
                        int *specified_types,
                        PyArrayObject **op,
                        NPY_CASTING casting,
                        int any_object,
                        int use_min_scalar,
                        PyArray_Descr **out_dtype)
{
    int i, j, nin = self->nin, nop = nin + self->nout;
    PyUFunc_Loop1d *funcdata;

    /* Use this to try to avoid repeating the same userdef loop search */
    int last_userdef = -1;

    int no_castable_output = 0;
    char err_src_typecode = '-', err_dst_typecode = '-';

    for (i = 0; i < nin; ++i) {
        int type_num = FUNC1(op[i])->type_num;
        if (type_num != last_userdef && FUNC5(type_num)) {
            PyObject *key, *obj;

            last_userdef = type_num;

            key = FUNC4(type_num);
            if (key == NULL) {
                return -1;
            }
            obj = FUNC2(self->userloops, key);
            FUNC6(key);
            if (obj == NULL) {
                continue;
            }

            for (funcdata = (PyUFunc_Loop1d *)FUNC0(obj);
                 funcdata != NULL;
                 funcdata = funcdata->next) {
                int *types = funcdata->arg_types;
                int matched = 1;

                if (n_specified == nop) {
                    for (j = 0; j < nop; ++j) {
                        if (types[j] != specified_types[j] &&
                                    specified_types[j] != NPY_NOTYPE) {
                            matched = 0;
                            break;
                        }
                    }
                } else {
                    if (types[nin] != specified_types[0]) {
                        matched = 0;
                    }
                }
                if (!matched) {
                    continue;
                }

                switch (FUNC9(self, op,
                            casting, casting,
                            any_object, use_min_scalar,
                            types, NULL,
                            &no_castable_output, &err_src_typecode,
                            &err_dst_typecode)) {
                    /* It works */
                    case 1:
                        FUNC7(self, op,
                            out_dtype, types, NULL);
                        return 1;
                    /* Didn't match */
                    case 0:
                        FUNC3(PyExc_TypeError,
                             "found a user loop for ufunc '%s' "
                             "matching the type-tuple, "
                             "but the inputs and/or outputs could not be "
                             "cast according to the casting rule",
                             FUNC8(self));
                        return -1;
                    /* Error */
                    case -1:
                        return -1;
                }
            }
        }
    }

    /* Didn't find a match */
    return 0;
}