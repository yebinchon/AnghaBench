
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t npy_intp ;
struct TYPE_9__ {int type_num; } ;
struct TYPE_8__ {size_t nin; size_t nout; int userloops; } ;
struct TYPE_7__ {int* arg_types; int arg_dtypes; struct TYPE_7__* next; } ;
typedef TYPE_1__ PyUFunc_Loop1d ;
typedef TYPE_2__ PyUFuncObject ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;
typedef int NPY_CASTING ;


 int NPY_VOID ;
 scalar_t__ NpyCapsule_AsVoidPtr (int *) ;
 TYPE_6__* PyArray_DESCR (int *) ;
 int * PyDict_GetItem (int ,int *) ;
 int * PyInt_FromLong (int) ;
 scalar_t__ PyTypeNum_ISUSERDEF (int) ;
 int Py_DECREF (int *) ;
 int set_ufunc_loop_data_types (TYPE_2__*,int **,int **,int*,int ) ;
 int ufunc_loop_matches (TYPE_2__*,int **,int ,int ,int,int,int*,int ,int*,char*,char*) ;

__attribute__((used)) static int
linear_search_userloop_type_resolver(PyUFuncObject *self,
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


    int last_userdef = -1;

    for (i = 0; i < nop; ++i) {
        int type_num;


        if (op[i] == ((void*)0)) {
            break;
        }

        type_num = PyArray_DESCR(op[i])->type_num;
        if (type_num != last_userdef &&
                (PyTypeNum_ISUSERDEF(type_num) || type_num == NPY_VOID)) {
            PyObject *key, *obj;

            last_userdef = type_num;

            key = PyInt_FromLong(type_num);
            if (key == ((void*)0)) {
                return -1;
            }
            obj = PyDict_GetItem(self->userloops, key);
            Py_DECREF(key);
            if (obj == ((void*)0)) {
                continue;
            }
            for (funcdata = (PyUFunc_Loop1d *)NpyCapsule_AsVoidPtr(obj);
                 funcdata != ((void*)0);
                 funcdata = funcdata->next) {
                int *types = funcdata->arg_types;
                switch (ufunc_loop_matches(self, op,
                            input_casting, output_casting,
                            any_object, use_min_scalar,
                            types, funcdata->arg_dtypes,
                            out_no_castable_output, out_err_src_typecode,
                            out_err_dst_typecode)) {

                    case -1:
                        return -1;

                    case 1:
                        set_ufunc_loop_data_types(self, op, out_dtype, types, funcdata->arg_dtypes);
                        return 1;
                }
            }
        }
    }


    return 0;
}
