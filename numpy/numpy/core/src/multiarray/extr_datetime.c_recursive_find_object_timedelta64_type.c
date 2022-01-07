
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type_num; } ;
struct TYPE_5__ {int obmeta; } ;
typedef scalar_t__ Py_ssize_t ;
typedef TYPE_1__ PyTimedeltaScalarObject ;
typedef int PyObject ;
typedef TYPE_2__ PyArray_Descr ;
typedef int PyArray_DatetimeMetaData ;
typedef int PyArrayObject ;


 scalar_t__ NPY_DATETIME ;
 scalar_t__ NPY_OBJECT ;
 scalar_t__ NPY_TIMEDELTA ;
 scalar_t__ Npy_EnterRecursiveCall (char*) ;
 scalar_t__ PyArray_Check (int *) ;
 TYPE_2__* PyArray_DESCR (int *) ;
 scalar_t__ PyArray_IsScalar (int *,int ) ;
 scalar_t__ PyArray_NDIM (int *) ;
 scalar_t__ PyBytes_Check (int *) ;
 scalar_t__ PyDelta_Check (int *) ;
 scalar_t__ PyErr_Occurred () ;
 int * PyObject_GetItem (int *,int *) ;
 scalar_t__ PySequence_Check (int *) ;
 int * PySequence_GetItem (int *,scalar_t__) ;
 scalar_t__ PySequence_Size (int *) ;
 int * PyTuple_New (int ) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;
 int Py_LeaveRecursiveCall () ;
 int Timedelta ;
 scalar_t__ compute_datetime_metadata_greatest_common_divisor (int *,int *,int *,int,int) ;
 int delta_checker (int *) ;
 int * get_datetime_metadata_from_dtype (TYPE_2__*) ;

__attribute__((used)) static int
recursive_find_object_timedelta64_type(PyObject *obj,
                        PyArray_DatetimeMetaData *meta)
{

    if (PyArray_Check(obj)) {
        PyArrayObject *arr = (PyArrayObject *)obj;
        PyArray_Descr *arr_dtype = PyArray_DESCR(arr);


        if (arr_dtype->type_num == NPY_DATETIME ||
                    arr_dtype->type_num == NPY_TIMEDELTA) {
            PyArray_DatetimeMetaData *tmp_meta;


            tmp_meta = get_datetime_metadata_from_dtype(arr_dtype);
            if (tmp_meta == ((void*)0)) {
                return -1;
            }


            if (compute_datetime_metadata_greatest_common_divisor(meta,
                            tmp_meta, meta, 0, 0) < 0) {
                return -1;
            }

            return 0;
        }

        else if (arr_dtype->type_num != NPY_OBJECT) {
            return 0;
        }
        else {
            if (PyArray_NDIM(arr) == 0) {






                PyObject *item, *args;

                args = PyTuple_New(0);
                if (args == ((void*)0)) {
                    return 0;
                }
                item = PyObject_GetItem(obj, args);
                Py_DECREF(args);
                if (item == ((void*)0)) {
                    return 0;
                }




                if (PyDelta_Check(item)) {
                    Py_DECREF(item);
                    return delta_checker(meta);
                }
                Py_DECREF(item);
            }
        }
    }

    else if (PyArray_IsScalar(obj, Timedelta)) {
        PyTimedeltaScalarObject *dts = (PyTimedeltaScalarObject *)obj;


        if (compute_datetime_metadata_greatest_common_divisor(meta,
                        &dts->obmeta, meta, 1, 1) < 0) {
            return -1;
        }

        return 0;
    }

    else if (PyBytes_Check(obj) || PyUnicode_Check(obj)) {

        return 0;
    }

    else if (PyDelta_Check(obj)) {
        return delta_checker(meta);
    }


    if (PySequence_Check(obj)) {
        Py_ssize_t i, len = PySequence_Size(obj);
        if (len < 0 && PyErr_Occurred()) {
            return -1;
        }

        for (i = 0; i < len; ++i) {
            int ret;
            PyObject *f = PySequence_GetItem(obj, i);
            if (f == ((void*)0)) {
                return -1;
            }
            if (Npy_EnterRecursiveCall(" in recursive_find_object_timedelta64_type") != 0) {
                Py_DECREF(f);
                return -1;
            }
            ret = recursive_find_object_timedelta64_type(f, meta);
            Py_LeaveRecursiveCall();
            Py_DECREF(f);
            if (ret < 0) {
                return ret;
            }
        }

        return 0;
    }

    else {
        return 0;
    }
}
