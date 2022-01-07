
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;
typedef int PyArray_Descr ;


 int NPY_SUCCEED ;
 int PyArray_DescrConverter (int *,int **) ;
 int PyErr_Clear () ;
 int PyErr_ExceptionMatches (int ) ;
 int PyExc_RecursionError ;
 int * PyObject_GetAttrString (int *,char*) ;
 int Py_DECREF (int *) ;
 scalar_t__ Py_EnterRecursiveCall (char*) ;
 int Py_LeaveRecursiveCall () ;

int
_arraydescr_from_dtype_attr(PyObject *obj, PyArray_Descr **newdescr)
{
    PyObject *dtypedescr;
    int ret;


    dtypedescr = PyObject_GetAttrString(obj, "dtype");
    if (dtypedescr == ((void*)0)) {




        goto fail;
    }

    if (Py_EnterRecursiveCall(
            " while trying to convert the given data type from its "
            "`.dtype` attribute.") != 0) {
        Py_DECREF(dtypedescr);
        return 1;
    }

    ret = PyArray_DescrConverter(dtypedescr, newdescr);

    Py_DECREF(dtypedescr);
    Py_LeaveRecursiveCall();
    if (ret != NPY_SUCCEED) {
        goto fail;
    }

    return 1;

  fail:

    if (!PyErr_ExceptionMatches(PyExc_RecursionError)) {
        PyErr_Clear();
        return 0;
    }
    return 1;
}
