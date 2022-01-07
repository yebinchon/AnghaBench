
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyArray_Descr ;


 int PyArray_PyIntAsIntp (int *) ;
 scalar_t__ PyBaseString_Check (int *) ;
 scalar_t__ PyErr_GivenExceptionMatches (int *,int ) ;
 int * PyErr_Occurred () ;
 int PyErr_SetString (int ,char*) ;
 int PyExc_TypeError ;
 scalar_t__ _check_has_fields (int *) ;
 scalar_t__ _is_list_of_strings (int *) ;
 int * _subscript_by_index (int *,int ) ;
 int * _subscript_by_name (int *,int *) ;
 scalar_t__ arraydescr_field_subset_view (int *,int *) ;
 scalar_t__ error_converting (int ) ;

__attribute__((used)) static PyObject *
descr_subscript(PyArray_Descr *self, PyObject *op)
{
    if (_check_has_fields(self) < 0) {
        return ((void*)0);
    }

    if (PyBaseString_Check(op)) {
        return _subscript_by_name(self, op);
    }
    else if (_is_list_of_strings(op)) {
        return (PyObject *)arraydescr_field_subset_view(self, op);
    }
    else {
        Py_ssize_t i = PyArray_PyIntAsIntp(op);
        if (error_converting(i)) {

            PyObject *err = PyErr_Occurred();
            if (PyErr_GivenExceptionMatches(err, PyExc_TypeError)) {
                PyErr_SetString(PyExc_TypeError,
                        "Field key must be an integer field offset, "
                        "single field name, or list of field names.");
            }
            return ((void*)0);
        }
        return _subscript_by_index(self, i);
    }
}
