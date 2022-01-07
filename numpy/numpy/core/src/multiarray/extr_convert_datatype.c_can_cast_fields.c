
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int NPY_CASTING ;


 int PyArray_CanCastTypeTo (int *,int *,int ) ;
 int * PyDict_GetItem (int *,int *) ;
 scalar_t__ PyDict_Next (int *,scalar_t__*,int **,int **) ;
 scalar_t__ PyDict_Size (int *) ;
 scalar_t__ PyTuple_GET_ITEM (int *,int ) ;

__attribute__((used)) static int
can_cast_fields(PyObject *field1, PyObject *field2, NPY_CASTING casting)
{
    Py_ssize_t ppos;
    PyObject *key;
    PyObject *tuple1, *tuple2;

    if (field1 == field2) {
        return 1;
    }
    if (field1 == ((void*)0) || field2 == ((void*)0)) {
        return 0;
    }
    if (PyDict_Size(field1) != PyDict_Size(field2)) {
        return 0;
    }


    ppos = 0;
    while (PyDict_Next(field1, &ppos, &key, &tuple1)) {
        if ((tuple2 = PyDict_GetItem(field2, key)) == ((void*)0)) {
            return 0;
        }

        if (!PyArray_CanCastTypeTo(
                        (PyArray_Descr *)PyTuple_GET_ITEM(tuple1, 0),
                        (PyArray_Descr *)PyTuple_GET_ITEM(tuple2, 0),
                        casting)) {
            return 0;
        }
    }

    return 1;
}
