
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int type_num; } ;
struct TYPE_9__ {int nin; int nout; int userloops; } ;
struct TYPE_8__ {int* arg_types; struct TYPE_8__* next; } ;
typedef TYPE_1__ PyUFunc_Loop1d ;
typedef TYPE_2__ PyUFuncObject ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;
typedef int NPY_CASTING ;


 int NPY_NOTYPE ;
 scalar_t__ NpyCapsule_AsVoidPtr (int *) ;
 TYPE_7__* PyArray_DESCR (int *) ;
 int * PyDict_GetItem (int ,int *) ;
 int PyErr_Format (int ,char*,int ) ;
 int PyExc_TypeError ;
 int * PyInt_FromLong (int) ;
 scalar_t__ PyTypeNum_ISUSERDEF (int) ;
 int Py_DECREF (int *) ;
 int set_ufunc_loop_data_types (TYPE_2__*,int **,int **,int*,int *) ;
 int ufunc_get_name_cstr (TYPE_2__*) ;
 int ufunc_loop_matches (TYPE_2__*,int **,int ,int ,int,int,int*,int *,int*,char*,char*) ;

__attribute__((used)) static int
type_tuple_userloop_type_resolver(PyUFuncObject *self,
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


    int last_userdef = -1;

    int no_castable_output = 0;
    char err_src_typecode = '-', err_dst_typecode = '-';

    for (i = 0; i < nin; ++i) {
        int type_num = PyArray_DESCR(op[i])->type_num;
        if (type_num != last_userdef && PyTypeNum_ISUSERDEF(type_num)) {
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

                switch (ufunc_loop_matches(self, op,
                            casting, casting,
                            any_object, use_min_scalar,
                            types, ((void*)0),
                            &no_castable_output, &err_src_typecode,
                            &err_dst_typecode)) {

                    case 1:
                        set_ufunc_loop_data_types(self, op,
                            out_dtype, types, ((void*)0));
                        return 1;

                    case 0:
                        PyErr_Format(PyExc_TypeError,
                             "found a user loop for ufunc '%s' "
                             "matching the type-tuple, "
                             "but the inputs and/or outputs could not be "
                             "cast according to the casting rule",
                             ufunc_get_name_cstr(self));
                        return -1;

                    case -1:
                        return -1;
                }
            }
        }
    }


    return 0;
}
