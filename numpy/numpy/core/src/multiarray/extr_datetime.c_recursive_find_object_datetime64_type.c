
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int npy_datetime ;
struct TYPE_15__ {int num; int base; } ;
struct TYPE_14__ {scalar_t__ type_num; } ;
struct TYPE_13__ {TYPE_3__ obmeta; } ;
typedef scalar_t__ Py_ssize_t ;
typedef int PyObject ;
typedef TYPE_1__ PyDatetimeScalarObject ;
typedef TYPE_2__ PyArray_Descr ;
typedef TYPE_3__ PyArray_DatetimeMetaData ;
typedef int PyArrayObject ;


 int Datetime ;
 scalar_t__ NPY_DATETIME ;
 int NPY_FR_D ;
 int NPY_FR_ERROR ;
 int NPY_FR_us ;
 scalar_t__ NPY_OBJECT ;
 scalar_t__ NPY_STRING ;
 scalar_t__ NPY_TIMEDELTA ;
 scalar_t__ NPY_UNICODE ;
 int NPY_UNSAFE_CASTING ;
 scalar_t__ Npy_EnterRecursiveCall (char*) ;
 scalar_t__ PyArray_Check (int *) ;
 TYPE_2__* PyArray_DESCR (int *) ;
 scalar_t__ PyArray_IsScalar (int *,int ) ;
 scalar_t__ PyBytes_Check (int *) ;
 scalar_t__ PyDateTime_Check (int *) ;
 scalar_t__ PyDate_Check (int *) ;
 int PyErr_Clear () ;
 scalar_t__ PyErr_GivenExceptionMatches (scalar_t__,int ) ;
 scalar_t__ PyErr_Occurred () ;
 int PyExc_ValueError ;
 scalar_t__ PySequence_Check (int *) ;
 int * PySequence_GetItem (int *,scalar_t__) ;
 scalar_t__ PySequence_Size (int *) ;
 scalar_t__ PyUnicode_Check (int *) ;
 int Py_DECREF (int *) ;
 int Py_LeaveRecursiveCall () ;
 scalar_t__ compute_datetime_metadata_greatest_common_divisor (TYPE_3__*,TYPE_3__*,TYPE_3__*,int ,int ) ;
 scalar_t__ convert_pyobject_to_datetime (TYPE_3__*,int *,int ,int *) ;
 int find_string_array_datetime64_type (int *,TYPE_3__*) ;
 TYPE_3__* get_datetime_metadata_from_dtype (TYPE_2__*) ;

__attribute__((used)) static int
recursive_find_object_datetime64_type(PyObject *obj,
                        PyArray_DatetimeMetaData *meta)
{

    if (PyArray_Check(obj)) {
        PyArrayObject *arr = (PyArrayObject *)obj;
        PyArray_Descr *arr_dtype = PyArray_DESCR(arr);

        if (arr_dtype->type_num == NPY_STRING ||
                            arr_dtype->type_num == NPY_UNICODE) {
            return find_string_array_datetime64_type(arr, meta);
        }

        else if (arr_dtype->type_num == NPY_DATETIME ||
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
    }

    else if (PyArray_IsScalar(obj, Datetime)) {
        PyDatetimeScalarObject *dts = (PyDatetimeScalarObject *)obj;


        if (compute_datetime_metadata_greatest_common_divisor(meta,
                        &dts->obmeta, meta, 0, 0) < 0) {
            return -1;
        }

        return 0;
    }

    else if (PyBytes_Check(obj) || PyUnicode_Check(obj)) {
        npy_datetime tmp = 0;
        PyArray_DatetimeMetaData tmp_meta;

        tmp_meta.base = NPY_FR_ERROR;
        tmp_meta.num = 1;

        if (convert_pyobject_to_datetime(&tmp_meta, obj,
                                        NPY_UNSAFE_CASTING, &tmp) < 0) {

            if (PyErr_Occurred() &&
                    PyErr_GivenExceptionMatches(PyErr_Occurred(),
                                    PyExc_ValueError)) {
                PyErr_Clear();
                return 0;
            }

            else {
                return -1;
            }
        }


        if (compute_datetime_metadata_greatest_common_divisor(meta,
                        &tmp_meta, meta, 0, 0) < 0) {
            return -1;
        }

        return 0;
    }

    else if (PyDateTime_Check(obj)) {
        PyArray_DatetimeMetaData tmp_meta;

        tmp_meta.base = NPY_FR_us;
        tmp_meta.num = 1;


        if (compute_datetime_metadata_greatest_common_divisor(meta,
                        &tmp_meta, meta, 0, 0) < 0) {
            return -1;
        }

        return 0;
    }

    else if (PyDate_Check(obj)) {
        PyArray_DatetimeMetaData tmp_meta;

        tmp_meta.base = NPY_FR_D;
        tmp_meta.num = 1;


        if (compute_datetime_metadata_greatest_common_divisor(meta,
                        &tmp_meta, meta, 0, 0) < 0) {
            return -1;
        }

        return 0;
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
            if (Npy_EnterRecursiveCall(" in recursive_find_object_datetime64_type") != 0) {
                Py_DECREF(f);
                return -1;
            }
            ret = recursive_find_object_datetime64_type(f, meta);
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
