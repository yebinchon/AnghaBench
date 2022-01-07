
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * out; int in; } ;
typedef TYPE_1__ ufunc_full_args ;
typedef int PyObject ;


 int PyTuple_GET_ITEM (int *,int) ;
 int Py_XDECREF (int *) ;
 int Py_XINCREF (int *) ;
 int * _find_array_method (int ,int ) ;
 int * _get_output_array_method (int ,int ,int *) ;
 int npy_um_str_array_prepare ;

__attribute__((used)) static void
_find_array_prepare(ufunc_full_args args,
                    PyObject **output_prep, int nin, int nout)
{
    int i;
    PyObject *prep;





    prep = _find_array_method(args.in, npy_um_str_array_prepare);
    if (args.out == ((void*)0)) {
        for (i = 0; i < nout; i++) {
            Py_XINCREF(prep);
            output_prep[i] = prep;
        }
    }
    else {
        for (i = 0; i < nout; i++) {
            output_prep[i] = _get_output_array_method(
                PyTuple_GET_ITEM(args.out, i), npy_um_str_array_prepare, prep);
        }
    }
    Py_XDECREF(prep);
    return;
}
