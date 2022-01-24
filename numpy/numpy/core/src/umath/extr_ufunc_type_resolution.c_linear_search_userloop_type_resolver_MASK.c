#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t npy_intp ;
struct TYPE_9__ {int type_num; } ;
struct TYPE_8__ {size_t nin; size_t nout; int /*<<< orphan*/  userloops; } ;
struct TYPE_7__ {int* arg_types; int /*<<< orphan*/  arg_dtypes; struct TYPE_7__* next; } ;
typedef  TYPE_1__ PyUFunc_Loop1d ;
typedef  TYPE_2__ PyUFuncObject ;
typedef  int /*<<< orphan*/  PyObject ;
typedef  int /*<<< orphan*/  PyArray_Descr ;
typedef  int /*<<< orphan*/  PyArrayObject ;
typedef  int /*<<< orphan*/  NPY_CASTING ;

/* Variables and functions */
 int NPY_VOID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int*,int /*<<< orphan*/ ,int*,char*,char*) ; 

__attribute__((used)) static int
FUNC8(PyUFuncObject *self,
                        PyArrayObject **op,
                        NPY_CASTING input_casting,
                        NPY_CASTING output_casting,
                        int any_object,
                        int use_min_scalar,
                        PyArray_Descr **out_dtype,
                        int *out_no_castable_output,
                        char *out_err_src_typecode,
                        char *out_err_dst_typecode)
{
    npy_intp i, nop = self->nin + self->nout;
    PyUFunc_Loop1d *funcdata;

    /* Use this to try to avoid repeating the same userdef loop search */
    int last_userdef = -1;

    for (i = 0; i < nop; ++i) {
        int type_num;

        /* no more ufunc arguments to check */
        if (op[i] == NULL) {
            break;
        }

        type_num = FUNC1(op[i])->type_num;
        if (type_num != last_userdef &&
                (FUNC4(type_num) || type_num == NPY_VOID)) {
            PyObject *key, *obj;

            last_userdef = type_num;

            key = FUNC3(type_num);
            if (key == NULL) {
                return -1;
            }
            obj = FUNC2(self->userloops, key);
            FUNC5(key);
            if (obj == NULL) {
                continue;
            }
            for (funcdata = (PyUFunc_Loop1d *)FUNC0(obj);
                 funcdata != NULL;
                 funcdata = funcdata->next) {
                int *types = funcdata->arg_types;
                switch (FUNC7(self, op,
                            input_casting, output_casting,
                            any_object, use_min_scalar,
                            types, funcdata->arg_dtypes,
                            out_no_castable_output, out_err_src_typecode,
                            out_err_dst_typecode)) {
                    /* Error */
                    case -1:
                        return -1;
                    /* Found a match */
                    case 1:
                        FUNC6(self, op, out_dtype, types, funcdata->arg_dtypes);
                        return 1;
                }
            }
        }
    }

    /* Didn't find a match */
    return 0;
}