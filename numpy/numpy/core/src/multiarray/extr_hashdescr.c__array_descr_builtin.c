
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int alignment; int elsize; int flags; int kind; int byteorder; } ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 int PyErr_SetString (int ,char*) ;
 int PyExc_SystemError ;
 int PyList_Append (int *,int *) ;
 int * PyTuple_GetItem (int *,scalar_t__) ;
 scalar_t__ PyTuple_Size (int *) ;
 int * Py_BuildValue (char*,int ,char,int ,int ,int ) ;
 int Py_DECREF (int *) ;
 char _normalize_byteorder (int ) ;

__attribute__((used)) static int _array_descr_builtin(PyArray_Descr* descr, PyObject *l)
{
    Py_ssize_t i;
    PyObject *t, *item;
    char nbyteorder = _normalize_byteorder(descr->byteorder);





    t = Py_BuildValue("(cccii)", descr->kind, nbyteorder,
            descr->flags, descr->elsize, descr->alignment);

    for(i = 0; i < PyTuple_Size(t); ++i) {
        item = PyTuple_GetItem(t, i);
        if (item == ((void*)0)) {
            PyErr_SetString(PyExc_SystemError,
                    "(Hash) Error while computing builting hash");
            goto clean_t;
        }
        PyList_Append(l, item);
    }

    Py_DECREF(t);
    return 0;

clean_t:
    Py_DECREF(t);
    return -1;
}
