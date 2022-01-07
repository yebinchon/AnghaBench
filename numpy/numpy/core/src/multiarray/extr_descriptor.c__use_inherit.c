
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ elsize; int flags; int * metadata; int * names; int * fields; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 int Integer ;
 int PyArray_DescrConverter (int *,TYPE_1__**) ;
 TYPE_1__* PyArray_DescrNew (TYPE_1__*) ;
 scalar_t__ PyArray_IsScalar (int *,int ) ;
 scalar_t__ PyDataType_HASFIELDS (TYPE_1__*) ;
 scalar_t__ PyDataType_ISUNSIZED (TYPE_1__*) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 int Py_DECREF (TYPE_1__*) ;
 int Py_XDECREF (int *) ;
 int Py_XINCREF (int *) ;
 scalar_t__ _is_tuple_of_integers (int *) ;
 scalar_t__ invalid_union_object_dtype (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static PyArray_Descr *
_use_inherit(PyArray_Descr *type, PyObject *newobj, int *errflag)
{
    PyArray_Descr *new;
    PyArray_Descr *conv;

    *errflag = 0;
    if (PyArray_IsScalar(newobj, Integer)
            || _is_tuple_of_integers(newobj)
            || !PyArray_DescrConverter(newobj, &conv)) {
        return ((void*)0);
    }
    *errflag = 1;
    new = PyArray_DescrNew(type);
    if (new == ((void*)0)) {
        goto fail;
    }
    if (PyDataType_ISUNSIZED(new)) {
        new->elsize = conv->elsize;
    }
    else if (new->elsize != conv->elsize) {
        PyErr_SetString(PyExc_ValueError,
                "mismatch in size of old and new data-descriptor");
        Py_DECREF(new);
        goto fail;
    }
    else if (invalid_union_object_dtype(new, conv)) {
        Py_DECREF(new);
        goto fail;
    }

    if (PyDataType_HASFIELDS(conv)) {
        Py_XDECREF(new->fields);
        new->fields = conv->fields;
        Py_XINCREF(new->fields);

        Py_XDECREF(new->names);
        new->names = conv->names;
        Py_XINCREF(new->names);
    }
    if (conv->metadata != ((void*)0)) {
        Py_XDECREF(new->metadata);
        new->metadata = conv->metadata;
        Py_XINCREF(new->metadata);
    }
    new->flags = conv->flags;
    Py_DECREF(conv);
    *errflag = 0;
    return new;

 fail:
    Py_DECREF(conv);
    return ((void*)0);
}
