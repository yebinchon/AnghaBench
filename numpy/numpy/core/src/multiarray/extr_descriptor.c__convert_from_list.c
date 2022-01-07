
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char flags; int alignment; int elsize; int * names; int * fields; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 char NPY_ALIGNED_STRUCT ;
 int NPY_FAIL ;
 char NPY_FROM_FIELDS ;
 char NPY_NEEDS_PYAPI ;
 int NPY_NEXT_ALIGNED_OFFSET (int,int) ;
 int NPY_VOID ;
 int PyArray_DescrAlignConverter (int *,TYPE_1__**) ;
 int PyArray_DescrConverter (int *,TYPE_1__**) ;
 TYPE_1__* PyArray_DescrNewFromType (int ) ;
 int PyArray_MAX (int,int) ;
 scalar_t__ PyBytes_Check (int *) ;
 scalar_t__ PyBytes_GET_SIZE (int *) ;
 int * PyDict_New () ;
 int PyDict_SetItem (int *,int *,int *) ;
 int * PyInt_FromLong (long) ;
 int * PyList_GET_ITEM (int *,int) ;
 int PyList_GET_SIZE (int *) ;
 int * PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int *) ;
 int * PyUString_FromFormat (char*,int) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyArray_Descr *
_convert_from_list(PyObject *obj, int align)
{
    int n, i;
    int totalsize;
    PyObject *fields;
    PyArray_Descr *conv = ((void*)0);
    PyArray_Descr *new;
    PyObject *key, *tup;
    PyObject *nameslist = ((void*)0);
    int ret;
    int maxalign = 0;

    char dtypeflags = NPY_NEEDS_PYAPI;

    n = PyList_GET_SIZE(obj);




    key = PyList_GET_ITEM(obj, n-1);
    if (PyBytes_Check(key) && PyBytes_GET_SIZE(key) == 0) {
        n = n - 1;
    }

    totalsize = 0;
    if (n == 0) {
        return ((void*)0);
    }
    nameslist = PyTuple_New(n);
    if (!nameslist) {
        return ((void*)0);
    }
    fields = PyDict_New();
    for (i = 0; i < n; i++) {
        tup = PyTuple_New(2);
        key = PyUString_FromFormat("f%d", i);
        if (align) {
            ret = PyArray_DescrAlignConverter(PyList_GET_ITEM(obj, i), &conv);
        }
        else {
            ret = PyArray_DescrConverter(PyList_GET_ITEM(obj, i), &conv);
        }
        if (ret == NPY_FAIL) {
            Py_DECREF(tup);
            Py_DECREF(key);
            goto fail;
        }
        dtypeflags |= (conv->flags & NPY_FROM_FIELDS);
        PyTuple_SET_ITEM(tup, 0, (PyObject *)conv);
        if (align) {
            int _align;

            _align = conv->alignment;
            if (_align > 1) {
                totalsize = NPY_NEXT_ALIGNED_OFFSET(totalsize, _align);
            }
            maxalign = PyArray_MAX(maxalign, _align);
        }
        PyTuple_SET_ITEM(tup, 1, PyInt_FromLong((long) totalsize));
        PyDict_SetItem(fields, key, tup);
        Py_DECREF(tup);
        PyTuple_SET_ITEM(nameslist, i, key);
        totalsize += conv->elsize;
    }
    new = PyArray_DescrNewFromType(NPY_VOID);
    new->fields = fields;
    new->names = nameslist;
    new->flags = dtypeflags;
    if (maxalign > 1) {
        totalsize = NPY_NEXT_ALIGNED_OFFSET(totalsize, maxalign);
    }

    if (align) {
        new->flags |= NPY_ALIGNED_STRUCT;
        new->alignment = maxalign;
    }
    new->elsize = totalsize;
    return new;

 fail:
    Py_DECREF(nameslist);
    Py_DECREF(fields);
    return ((void*)0);
}
