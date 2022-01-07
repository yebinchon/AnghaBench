
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * out; int * in; } ;
typedef TYPE_1__ ufunc_full_args ;
typedef int PyObject ;


 int * PySequence_Concat (int *,int *) ;
 int Py_INCREF (int *) ;

__attribute__((used)) static PyObject *
_get_wrap_prepare_args(ufunc_full_args full_args) {
    if (full_args.out == ((void*)0)) {
        Py_INCREF(full_args.in);
        return full_args.in;
    }
    else {
        return PySequence_Concat(full_args.in, full_args.out);
    }
}
