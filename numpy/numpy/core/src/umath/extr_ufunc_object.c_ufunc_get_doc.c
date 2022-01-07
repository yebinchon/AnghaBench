
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * doc; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;


 int * PyObject_CallFunctionObjArgs (int *,int *,int *) ;
 int PyUString_ConcatAndDel (int **,int ) ;
 int PyUString_FromFormat (char*,int *) ;
 int npy_cache_import (char*,char*,int **) ;

__attribute__((used)) static PyObject *
ufunc_get_doc(PyUFuncObject *ufunc)
{
    static PyObject *_sig_formatter;
    PyObject *doc;

    npy_cache_import(
        "numpy.core._internal",
        "_ufunc_doc_signature_formatter",
        &_sig_formatter);

    if (_sig_formatter == ((void*)0)) {
        return ((void*)0);
    }






    doc = PyObject_CallFunctionObjArgs(
        _sig_formatter, (PyObject *)ufunc, ((void*)0));
    if (doc == ((void*)0)) {
        return ((void*)0);
    }
    if (ufunc->doc != ((void*)0)) {
        PyUString_ConcatAndDel(&doc,
            PyUString_FromFormat("\n\n%s", ufunc->doc));
    }
    return doc;
}
