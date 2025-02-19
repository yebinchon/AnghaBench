
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int elsize; int * fields; int * names; } ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;


 int PyArg_ParseTuple (int *,char*,TYPE_1__**,int*,int **) ;
 scalar_t__ PyDataType_REFCHK (TYPE_1__*) ;
 int * PyDict_GetItem (int *,int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 int * PyTuple_GET_ITEM (int *,scalar_t__) ;
 scalar_t__ PyTuple_GET_SIZE (int *) ;

__attribute__((used)) static int
validate_object_field_overlap(PyArray_Descr *dtype)
{
    PyObject *names, *fields, *key, *tup, *title;
    Py_ssize_t i, j, names_size;
    PyArray_Descr *fld_dtype, *fld2_dtype;
    int fld_offset, fld2_offset;


    names = dtype->names;
    names_size = PyTuple_GET_SIZE(names);
    fields = dtype->fields;

    for (i = 0; i < names_size; ++i) {
        key = PyTuple_GET_ITEM(names, i);
        if (key == ((void*)0)) {
            return -1;
        }
        tup = PyDict_GetItem(fields, key);
        if (tup == ((void*)0)) {
            return -1;
        }
        if (!PyArg_ParseTuple(tup, "Oi|O", &fld_dtype, &fld_offset, &title)) {
            return -1;
        }


        if (PyDataType_REFCHK(fld_dtype)) {
            for (j = 0; j < names_size; ++j) {
                if (i != j) {
                    key = PyTuple_GET_ITEM(names, j);
                    if (key == ((void*)0)) {
                        return -1;
                    }
                    tup = PyDict_GetItem(fields, key);
                    if (tup == ((void*)0)) {
                        return -1;
                    }
                    if (!PyArg_ParseTuple(tup, "Oi|O", &fld2_dtype,
                                                &fld2_offset, &title)) {
                        return -1;
                    }

                    if (fld_offset < fld2_offset + fld2_dtype->elsize &&
                                fld2_offset < fld_offset + fld_dtype->elsize) {
                        PyErr_SetString(PyExc_TypeError,
                                "Cannot create a NumPy dtype with overlapping "
                                "object fields");
                        return -1;
                    }
                }
            }
        }
    }


    return 0;
}
