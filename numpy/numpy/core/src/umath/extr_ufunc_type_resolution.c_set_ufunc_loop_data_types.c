
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type_num; } ;
struct TYPE_5__ {int nin; int nout; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 TYPE_3__* PyArray_DESCR (int *) ;
 int * PyArray_DescrFromType (int) ;
 int Py_DECREF (int *) ;
 int Py_XINCREF (int *) ;
 int * ensure_dtype_nbo (TYPE_3__*) ;

__attribute__((used)) static int
set_ufunc_loop_data_types(PyUFuncObject *self, PyArrayObject **op,
                    PyArray_Descr **out_dtypes,
                    int *type_nums, PyArray_Descr **dtypes)
{
    int i, nin = self->nin, nop = nin + self->nout;







    for (i = 0; i < nop; ++i) {
        if (dtypes != ((void*)0)) {
            out_dtypes[i] = dtypes[i];
            Py_XINCREF(out_dtypes[i]);




        }
        else if (op[i] != ((void*)0) &&
                 PyArray_DESCR(op[i])->type_num == type_nums[i]) {
            out_dtypes[i] = ensure_dtype_nbo(PyArray_DESCR(op[i]));
        }




        else if (i >= nin && op[0] != ((void*)0) &&
                            PyArray_DESCR(op[0])->type_num == type_nums[i]) {
            out_dtypes[i] = ensure_dtype_nbo(PyArray_DESCR(op[0]));
        }

        else {
            out_dtypes[i] = PyArray_DescrFromType(type_nums[i]);
        }

        if (out_dtypes[i] == ((void*)0)) {
            goto fail;
        }
    }

    return 0;

fail:
    while (--i >= 0) {
        Py_DECREF(out_dtypes[i]);
        out_dtypes[i] = ((void*)0);
    }
    return -1;
}
