
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {size_t base; int num; } ;
struct TYPE_6__ {int * metadata; } ;
typedef int PyObject ;
typedef TYPE_1__ PyArray_Descr ;
typedef TYPE_2__ PyArray_DatetimeMetaData ;


 int * PyBytes_FromString (int ) ;
 int * PyDict_New () ;
 int * PyInt_FromLong (int) ;
 int * PyTuple_New (int) ;
 int PyTuple_SET_ITEM (int *,int,int *) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * _datetime_strings ;
 TYPE_2__* get_datetime_metadata_from_dtype (TYPE_1__*) ;

__attribute__((used)) static PyObject *
_get_pickleabletype_from_datetime_metadata(PyArray_Descr *dtype)
{
    PyObject *ret, *dt_tuple;
    PyArray_DatetimeMetaData *meta;


    ret = PyTuple_New(2);
    if (ret == ((void*)0)) {
        return ((void*)0);
    }


    if (dtype->metadata != ((void*)0)) {
        Py_INCREF(dtype->metadata);
        PyTuple_SET_ITEM(ret, 0, dtype->metadata);
    } else {
        PyTuple_SET_ITEM(ret, 0, PyDict_New());
    }


    meta = get_datetime_metadata_from_dtype(dtype);
    if (meta == ((void*)0)) {
        Py_DECREF(ret);
        return ((void*)0);
    }

    dt_tuple = PyTuple_New(4);
    if (dt_tuple == ((void*)0)) {
        Py_DECREF(ret);
        return ((void*)0);
    }
    PyTuple_SET_ITEM(dt_tuple, 0,
            PyBytes_FromString(_datetime_strings[meta->base]));
    PyTuple_SET_ITEM(dt_tuple, 1,
            PyInt_FromLong(meta->num));
    PyTuple_SET_ITEM(dt_tuple, 2,
            PyInt_FromLong(1));
    PyTuple_SET_ITEM(dt_tuple, 3,
            PyInt_FromLong(1));

    PyTuple_SET_ITEM(ret, 1, dt_tuple);

    return ret;
}
