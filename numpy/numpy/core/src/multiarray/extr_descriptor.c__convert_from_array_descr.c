
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_1__ ;


struct TYPE_42__ {char flags; int alignment; int elsize; struct TYPE_42__* names; struct TYPE_42__* fields; } ;
typedef TYPE_1__ PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 char NPY_ALIGNED_STRUCT ;
 int NPY_FAIL ;
 char NPY_FROM_FIELDS ;
 char NPY_NEEDS_PYAPI ;
 int NPY_NEXT_ALIGNED_OFFSET (int,int) ;
 int NPY_VOID ;
 int PyArray_DescrAlignConverter (TYPE_1__*,TYPE_1__**) ;
 int PyArray_DescrConverter (TYPE_1__*,TYPE_1__**) ;
 TYPE_1__* PyArray_DescrNewFromType (int ) ;
 int PyArray_MAX (int,int) ;
 scalar_t__ PyBaseString_Check (TYPE_1__*) ;
 int * PyDict_GetItem (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* PyDict_New () ;
 int PyDict_SetItem (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int PyErr_Format (int ,char*,int ) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 TYPE_1__* PyInt_FromLong (long) ;
 TYPE_1__* PyList_GET_ITEM (TYPE_1__*,int) ;
 int PyList_GET_SIZE (TYPE_1__*) ;
 int PyString_AsString (TYPE_1__*) ;
 scalar_t__ PyTuple_Check (TYPE_1__*) ;
 TYPE_1__* PyTuple_GET_ITEM (TYPE_1__*,int) ;
 int PyTuple_GET_SIZE (TYPE_1__*) ;
 TYPE_1__* PyTuple_GetSlice (TYPE_1__*,int,int) ;
 TYPE_1__* PyTuple_New (int) ;
 int PyTuple_SET_ITEM (TYPE_1__*,int,TYPE_1__*) ;
 scalar_t__ PyUString_Check (TYPE_1__*) ;
 TYPE_1__* PyUString_FromFormat (char*,int) ;
 scalar_t__ PyUString_GET_SIZE (TYPE_1__*) ;
 TYPE_1__* PyUnicode_AsASCIIString (TYPE_1__*) ;
 TYPE_1__* PyUnicode_AsUTF8String (TYPE_1__*) ;
 scalar_t__ PyUnicode_Check (TYPE_1__*) ;
 int Py_DECREF (TYPE_1__*) ;
 int Py_INCREF (TYPE_1__*) ;
 int Py_XDECREF (TYPE_1__*) ;

__attribute__((used)) static PyArray_Descr *
_convert_from_array_descr(PyObject *obj, int align)
{
    int n, i, totalsize;
    int ret;
    PyObject *fields, *item, *newobj;
    PyObject *name, *tup, *title;
    PyObject *nameslist;
    PyArray_Descr *new;
    PyArray_Descr *conv;

    char dtypeflags = NPY_NEEDS_PYAPI;
    int maxalign = 0;

    n = PyList_GET_SIZE(obj);
    nameslist = PyTuple_New(n);
    if (!nameslist) {
        return ((void*)0);
    }
    totalsize = 0;
    fields = PyDict_New();
    for (i = 0; i < n; i++) {
        item = PyList_GET_ITEM(obj, i);
        if (!PyTuple_Check(item) || (PyTuple_GET_SIZE(item) < 2)) {
            goto fail;
        }
        name = PyTuple_GET_ITEM(item, 0);
        if (PyBaseString_Check(name)) {
            title = ((void*)0);
        }
        else if (PyTuple_Check(name)) {
            if (PyTuple_GET_SIZE(name) != 2) {
                goto fail;
            }
            title = PyTuple_GET_ITEM(name, 0);
            name = PyTuple_GET_ITEM(name, 1);
            if (!PyBaseString_Check(name)) {
                goto fail;
            }
        }
        else {
            goto fail;
        }


        Py_INCREF(name);



        if (PyUnicode_Check(name)) {
            PyObject *tmp = PyUnicode_AsASCIIString(name);
            Py_DECREF(name);
            if (tmp == ((void*)0)) {
                goto fail;
            }
            name = tmp;
        }

        if (PyUString_GET_SIZE(name) == 0) {
            Py_DECREF(name);
            if (title == ((void*)0)) {
                name = PyUString_FromFormat("f%d", i);
            }
            else {
                name = title;
                Py_INCREF(name);
            }

        }
        PyTuple_SET_ITEM(nameslist, i, name);



        if (PyTuple_GET_SIZE(item) == 2) {
            if (align) {
                ret = PyArray_DescrAlignConverter(PyTuple_GET_ITEM(item, 1),
                                                        &conv);
            }
            else {
                ret = PyArray_DescrConverter(PyTuple_GET_ITEM(item, 1), &conv);
            }
        }
        else if (PyTuple_GET_SIZE(item) == 3) {
            newobj = PyTuple_GetSlice(item, 1, 3);
            if (align) {
                ret = PyArray_DescrAlignConverter(newobj, &conv);
            }
            else {
                ret = PyArray_DescrConverter(newobj, &conv);
            }
            Py_DECREF(newobj);
        }
        else {
            goto fail;
        }
        if (ret == NPY_FAIL) {
            goto fail;
        }

        if ((PyDict_GetItem(fields, name) != ((void*)0))
             || (title
                 && PyBaseString_Check(title)
                 && (PyDict_GetItem(fields, title) != ((void*)0)))) {



            PyErr_Format(PyExc_ValueError,
                    "field '%s' occurs more than once", PyString_AsString(name));



            Py_DECREF(conv);
            goto fail;
        }
        dtypeflags |= (conv->flags & NPY_FROM_FIELDS);
        if (align) {
            int _align;

            _align = conv->alignment;
            if (_align > 1) {
                totalsize = NPY_NEXT_ALIGNED_OFFSET(totalsize, _align);
            }
            maxalign = PyArray_MAX(maxalign, _align);
        }
        tup = PyTuple_New((title == ((void*)0) ? 2 : 3));
        PyTuple_SET_ITEM(tup, 0, (PyObject *)conv);
        PyTuple_SET_ITEM(tup, 1, PyInt_FromLong((long) totalsize));






        if (title != ((void*)0)) {
            Py_INCREF(title);
            PyTuple_SET_ITEM(tup, 2, title);
            PyDict_SetItem(fields, name, tup);
            if (PyBaseString_Check(title)) {
                if (PyDict_GetItem(fields, title) != ((void*)0)) {
                    PyErr_SetString(PyExc_ValueError,
                            "title already used as a name or title.");
                    Py_DECREF(tup);
                    goto fail;
                }
                PyDict_SetItem(fields, title, tup);
            }
        }
        else {
            PyDict_SetItem(fields, name, tup);
        }

        totalsize += conv->elsize;
        Py_DECREF(tup);
    }

    if (maxalign > 1) {
        totalsize = NPY_NEXT_ALIGNED_OFFSET(totalsize, maxalign);
    }

    new = PyArray_DescrNewFromType(NPY_VOID);
    if (new == ((void*)0)) {
        Py_XDECREF(fields);
        Py_XDECREF(nameslist);
        return ((void*)0);
    }
    new->fields = fields;
    new->names = nameslist;
    new->elsize = totalsize;
    new->flags = dtypeflags;


    if (align) {
        new->flags |= NPY_ALIGNED_STRUCT;
        new->alignment = maxalign;
    }
    return new;

 fail:
    Py_DECREF(fields);
    Py_DECREF(nameslist);
    return ((void*)0);

}
