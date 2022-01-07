
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tp_name; } ;
struct TYPE_5__ {int hash; int * fields; int * names; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 int PyDataType_HASFIELDS (TYPE_1__*) ;
 int PyDict_Contains (int *,int *) ;
 int * PyDict_GetItem (int *,int *) ;
 int * PyDict_New () ;
 int PyDict_SetItem (int *,int *,int *) ;
 int PyErr_Clear () ;
 int PyErr_Format (int ,char*,int,...) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_AttributeError ;
 int PyExc_ValueError ;
 int PyObject_Size (int *) ;
 int PySequence_Check (int *) ;
 int * PySequence_GetItem (int *,int) ;
 int * PySequence_Tuple (int *) ;
 int * PyTuple_GET_ITEM (int *,int) ;
 int PyTuple_GET_SIZE (int *) ;
 int PyUString_Check (int *) ;
 int Py_DECREF (int *) ;
 TYPE_3__* Py_TYPE (int *) ;

__attribute__((used)) static int
arraydescr_names_set(PyArray_Descr *self, PyObject *val)
{
    int N = 0;
    int i;
    PyObject *new_names;
    PyObject *new_fields;

    if (val == ((void*)0)) {
        PyErr_SetString(PyExc_AttributeError,
                "Cannot delete dtype names attribute");
        return -1;
    }
    if (!PyDataType_HASFIELDS(self)) {
        PyErr_SetString(PyExc_ValueError,
                "there are no fields defined");
        return -1;
    }
    N = PyTuple_GET_SIZE(self->names);
    if (!PySequence_Check(val) || PyObject_Size((PyObject *)val) != N) {
        PyErr_Format(PyExc_ValueError,
                "must replace all names at once with a sequence of length %d",
                N);
        return -1;
    }

    for (i = 0; i < N; i++) {
        PyObject *item;
        int valid = 1;
        item = PySequence_GetItem(val, i);
        valid = PyUString_Check(item);
        Py_DECREF(item);
        if (!valid) {
            PyErr_Format(PyExc_ValueError,
                    "item #%d of names is of type %s and not string",
                    i, Py_TYPE(item)->tp_name);
            return -1;
        }
    }

    self->hash = -1;

    new_names = PySequence_Tuple(val);
    new_fields = PyDict_New();
    for (i = 0; i < N; i++) {
        PyObject *key;
        PyObject *item;
        PyObject *new_key;
        int ret;
        key = PyTuple_GET_ITEM(self->names, i);

        item = PyDict_GetItem(self->fields, key);
        new_key = PyTuple_GET_ITEM(new_names, i);

        ret = PyDict_Contains(new_fields, new_key);
        if (ret != 0) {
            if (ret < 0) {
                PyErr_Clear();
            }
            PyErr_SetString(PyExc_ValueError, "Duplicate field names given.");
            Py_DECREF(new_names);
            Py_DECREF(new_fields);
            return -1;
        }
        PyDict_SetItem(new_fields, new_key, item);
    }


    Py_DECREF(self->names);
    self->names = new_names;


    Py_DECREF(self->fields);
    self->fields = new_fields;

    return 0;
}
