
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * out; int in; } ;
typedef TYPE_1__ ufunc_full_args ;
typedef int PyObject ;


 int * PyDict_GetItem (int *,int ) ;
 int PyTuple_GET_ITEM (int *,int) ;
 int * Py_True ;
 int Py_XDECREF (int *) ;
 int Py_XINCREF (int *) ;
 int * _find_array_method (int ,int ) ;
 int * _get_output_array_method (int ,int ,int *) ;
 int npy_um_str_array_wrap ;
 int npy_um_str_subok ;

__attribute__((used)) static void
_find_array_wrap(ufunc_full_args args, PyObject *kwds,
                PyObject **output_wrap, int nin, int nout)
{
    int i;
    PyObject *obj;
    PyObject *wrap = ((void*)0);





    if (kwds != ((void*)0) && (obj = PyDict_GetItem(kwds,
                                              npy_um_str_subok)) != ((void*)0)) {
        if (obj != Py_True) {

            goto handle_out;
        }
    }





    wrap = _find_array_method(args.in, npy_um_str_array_wrap);
handle_out:
    if (args.out == ((void*)0)) {
        for (i = 0; i < nout; i++) {
            Py_XINCREF(wrap);
            output_wrap[i] = wrap;
        }
    }
    else {
        for (i = 0; i < nout; i++) {
            output_wrap[i] = _get_output_array_method(
                PyTuple_GET_ITEM(args.out, i), npy_um_str_array_wrap, wrap);
        }
    }

    Py_XDECREF(wrap);
    return;
}
