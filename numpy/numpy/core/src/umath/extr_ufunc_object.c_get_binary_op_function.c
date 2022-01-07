
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ntypes; char* types; int nargs; void** data; int * functions; int * userloops; } ;
struct TYPE_4__ {int* arg_types; struct TYPE_4__* next; void* data; int func; } ;
typedef TYPE_1__ PyUFunc_Loop1d ;
typedef TYPE_2__ PyUFuncObject ;
typedef int PyUFuncGenericFunction ;
typedef int PyObject ;


 int NPY_OBJECT ;
 int NPY_UF_DBG_PRINT1 (char*,int) ;
 int NPY_UF_DBG_PRINT3 (char*,char,char,char) ;
 scalar_t__ NpyCapsule_AsVoidPtr (int *) ;
 scalar_t__ PyArray_CanCastSafely (int,char) ;
 int * PyDict_GetItem (int *,int *) ;
 int * PyInt_FromLong (int) ;
 scalar_t__ PyTypeNum_ISUSERDEF (int) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static int
get_binary_op_function(PyUFuncObject *ufunc, int *otype,
                        PyUFuncGenericFunction *out_innerloop,
                        void **out_innerloopdata)
{
    int i;
    PyUFunc_Loop1d *funcdata;

    NPY_UF_DBG_PRINT1("Getting binary op function for type number %d\n",
                                *otype);


    if (ufunc->userloops != ((void*)0) && PyTypeNum_ISUSERDEF(*otype)) {
        PyObject *key, *obj;
        key = PyInt_FromLong(*otype);
        if (key == ((void*)0)) {
            return -1;
        }
        obj = PyDict_GetItem(ufunc->userloops, key);
        Py_DECREF(key);
        if (obj != ((void*)0)) {
            funcdata = (PyUFunc_Loop1d *)NpyCapsule_AsVoidPtr(obj);
            while (funcdata != ((void*)0)) {
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


    for (i = 0; i < ufunc->ntypes; ++i) {
        char *types = ufunc->types + i*ufunc->nargs;

        NPY_UF_DBG_PRINT3("Trying loop with signature %d %d -> %d\n",
                                types[0], types[1], types[2]);

        if (PyArray_CanCastSafely(*otype, types[0]) &&
                    types[0] == types[1] &&
                    (*otype == NPY_OBJECT || types[0] != NPY_OBJECT)) {

            if (types[2] == types[0]) {
                *out_innerloop = ufunc->functions[i];
                *out_innerloopdata = ufunc->data[i];
                *otype = types[0];
                return 0;
            }




            else {
                *otype = types[2];
                break;
            }
        }
    }


    for (i = 0; i < ufunc->ntypes; ++i) {
        char *types = ufunc->types + i*ufunc->nargs;

        if (PyArray_CanCastSafely(*otype, types[0]) &&
                    types[0] == types[1] &&
                    types[1] == types[2] &&
                    (*otype == NPY_OBJECT || types[0] != NPY_OBJECT)) {

            *out_innerloop = ufunc->functions[i];
            *out_innerloopdata = ufunc->data[i];
            *otype = types[0];
            return 0;
        }
    }

    return -1;
}
