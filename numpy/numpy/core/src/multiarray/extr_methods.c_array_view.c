
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyTypeObject ;
typedef int PyObject ;
typedef int PyArray_Descr ;
typedef int PyArrayObject ;


 scalar_t__ NPY_FAIL ;
 int PyArg_ParseTupleAndKeywords (int *,int *,char*,char**,int **,int **) ;
 scalar_t__ PyArray_DescrConverter (int *,int **) ;
 int PyArray_Type ;
 int * PyArray_View (int *,int *,int *) ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_ValueError ;
 scalar_t__ PyType_Check (int *) ;
 scalar_t__ PyType_IsSubtype (int *,int *) ;

__attribute__((used)) static PyObject *
array_view(PyArrayObject *self, PyObject *args, PyObject *kwds)
{
    PyObject *out_dtype = ((void*)0);
    PyObject *out_type = ((void*)0);
    PyArray_Descr *dtype = ((void*)0);

    static char *kwlist[] = {"dtype", "type", ((void*)0)};
    if (!PyArg_ParseTupleAndKeywords(args, kwds, "|OO:view", kwlist,
                                     &out_dtype,
                                     &out_type)) {
        return ((void*)0);
    }



    if (out_dtype) {

        if (PyType_Check(out_dtype) &&
            PyType_IsSubtype((PyTypeObject *)out_dtype,
                             &PyArray_Type)) {
            if (out_type) {
                PyErr_SetString(PyExc_ValueError,
                                "Cannot specify output type twice.");
                return ((void*)0);
            }
            out_type = out_dtype;
            out_dtype = ((void*)0);
        }
    }

    if ((out_type) && (!PyType_Check(out_type) ||
                       !PyType_IsSubtype((PyTypeObject *)out_type,
                                         &PyArray_Type))) {
        PyErr_SetString(PyExc_ValueError,
                        "Type must be a sub-type of ndarray type");
        return ((void*)0);
    }

    if ((out_dtype) &&
        (PyArray_DescrConverter(out_dtype, &dtype) == NPY_FAIL)) {
        return ((void*)0);
    }

    return PyArray_View(self, dtype, (PyTypeObject*)out_type);
}
