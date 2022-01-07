
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t npy_intp ;
struct TYPE_8__ {int type_num; } ;
struct TYPE_7__ {size_t nin; size_t nout; int userloops; } ;
struct TYPE_6__ {int* arg_types; void* data; int func; struct TYPE_6__* next; } ;
typedef TYPE_1__ PyUFunc_Loop1d ;
typedef TYPE_2__ PyUFuncObject ;
typedef int PyUFuncGenericFunction ;
typedef int PyObject ;
typedef TYPE_3__ PyArray_Descr ;


 int NPY_VOID ;
 scalar_t__ NpyCapsule_AsVoidPtr (int *) ;
 int * PyDict_GetItem (int ,int *) ;
 int * PyInt_FromLong (int) ;
 scalar_t__ PyTypeNum_ISUSERDEF (int) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static int
find_userloop(PyUFuncObject *ufunc,
                PyArray_Descr **dtypes,
                PyUFuncGenericFunction *out_innerloop,
                void **out_innerloopdata)
{
    npy_intp i, nin = ufunc->nin, j, nargs = nin + ufunc->nout;
    PyUFunc_Loop1d *funcdata;


    int last_userdef = -1;

    for (i = 0; i < nargs; ++i) {
        int type_num;


        if (dtypes[i] == ((void*)0)) {
            break;
        }

        type_num = dtypes[i]->type_num;
        if (type_num != last_userdef &&
                (PyTypeNum_ISUSERDEF(type_num) || type_num == NPY_VOID)) {
            PyObject *key, *obj;

            last_userdef = type_num;

            key = PyInt_FromLong(type_num);
            if (key == ((void*)0)) {
                return -1;
            }
            obj = PyDict_GetItem(ufunc->userloops, key);
            Py_DECREF(key);
            if (obj == ((void*)0)) {
                continue;
            }
            for (funcdata = (PyUFunc_Loop1d *)NpyCapsule_AsVoidPtr(obj);
                 funcdata != ((void*)0);
                 funcdata = funcdata->next) {
                int *types = funcdata->arg_types;

                for (j = 0; j < nargs; ++j) {
                    if (types[j] != dtypes[j]->type_num) {
                        break;
                    }
                }

                if (j == nargs) {
                    *out_innerloop = funcdata->func;
                    *out_innerloopdata = funcdata->data;
                    return 1;
                }
            }
        }
    }


    return 0;
}
