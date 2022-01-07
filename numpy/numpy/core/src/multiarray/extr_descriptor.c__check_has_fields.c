
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;


 int PyBytes_AsString (int *) ;
 int PyDataType_HASFIELDS (int *) ;
 int PyErr_Format (int ,char*,int ) ;
 int PyExc_KeyError ;
 int * PyUnicode_AsUnicodeEscapeString (int *) ;
 int Py_DECREF (int *) ;
 int * arraydescr_str (int *) ;

__attribute__((used)) static int
_check_has_fields(PyArray_Descr *self)
{
    if (!PyDataType_HASFIELDS(self)) {
        PyObject *astr = arraydescr_str(self);
        if (astr == ((void*)0)) {
            return -1;
        }







        PyErr_Format(PyExc_KeyError,
                "There are no fields in dtype %s.", PyBytes_AsString(astr));
        Py_DECREF(astr);
        return -1;
    }
    else {
        return 0;
    }
}
