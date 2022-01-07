
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t npy_intp ;
struct TYPE_13__ {char type; } ;
struct TYPE_12__ {size_t nin; size_t nout; int ntypes; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;
typedef TYPE_2__ PyArray_Descr ;
typedef int PyArrayObject ;
typedef int NPY_CASTING ;


 int NPY_OBJECT ;
 int NPY_VOID ;
 int PyArray_CanCastArrayTo (int *,TYPE_2__*,int ) ;
 int PyArray_CanCastTypeTo (TYPE_2__*,TYPE_2__*,int ) ;
 TYPE_2__* PyArray_DESCR (int *) ;
 TYPE_2__* PyArray_DescrFromType (int) ;
 int PyObject_Print (int *,int ,int ) ;
 int Py_DECREF (TYPE_2__*) ;
 int Py_INCREF (TYPE_2__*) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static int
ufunc_loop_matches(PyUFuncObject *self,
                    PyArrayObject **op,
                    NPY_CASTING input_casting,
                    NPY_CASTING output_casting,
                    int any_object,
                    int use_min_scalar,
                    int *types, PyArray_Descr **dtypes,
                    int *out_no_castable_output,
                    char *out_err_src_typecode,
                    char *out_err_dst_typecode)
{
    npy_intp i, nin = self->nin, nop = nin + self->nout;





    for (i = 0; i < nin; ++i) {
        PyArray_Descr *tmp;
        if (types[i] == NPY_OBJECT && !any_object && self->ntypes > 1) {
            return 0;
        }






        if (types[i] == NPY_VOID && dtypes != ((void*)0)) {
            tmp = dtypes[i];
            Py_INCREF(tmp);
        }
        else {
            tmp = PyArray_DescrFromType(types[i]);
        }
        if (tmp == ((void*)0)) {
            return -1;
        }
        if (!use_min_scalar) {
            if (!PyArray_CanCastTypeTo(PyArray_DESCR(op[i]), tmp,
                                                    input_casting)) {
                Py_DECREF(tmp);
                return 0;
            }
        }
        else {
            if (!PyArray_CanCastArrayTo(op[i], tmp, input_casting)) {
                Py_DECREF(tmp);
                return 0;
            }
        }
        Py_DECREF(tmp);
    }





    for (i = nin; i < nop; ++i) {
        if (op[i] != ((void*)0)) {
            PyArray_Descr *tmp = PyArray_DescrFromType(types[i]);
            if (tmp == ((void*)0)) {
                return -1;
            }
            if (!PyArray_CanCastTypeTo(tmp, PyArray_DESCR(op[i]),
                                                        output_casting)) {
                if (!(*out_no_castable_output)) {
                    *out_no_castable_output = 1;
                    *out_err_src_typecode = tmp->type;
                    *out_err_dst_typecode = PyArray_DESCR(op[i])->type;
                }
                Py_DECREF(tmp);
                return 0;
            }
            Py_DECREF(tmp);
        }
    }

    return 1;
}
