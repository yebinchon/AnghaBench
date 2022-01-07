
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _buffer_info_t ;
typedef int PyObject ;


 int * PyDict_GetItem (int *,int *) ;
 int * PyDict_New () ;
 scalar_t__ PyDict_SetItem (int *,int *,int *) ;
 int PyList_Append (int *,int *) ;
 scalar_t__ PyList_GET_SIZE (int *) ;
 int * PyList_GetItem (int *,scalar_t__) ;
 int * PyList_New (int ) ;
 scalar_t__ PyLong_AsVoidPtr (int *) ;
 int * PyLong_FromVoidPtr (void*) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int Py_XDECREF (int *) ;
 int * _buffer_info_cache ;
 scalar_t__ _buffer_info_cmp (int *,int *) ;
 int _buffer_info_free (int *) ;
 int * _buffer_info_new (int *) ;

__attribute__((used)) static _buffer_info_t*
_buffer_get_info(PyObject *obj)
{
    PyObject *key = ((void*)0), *item_list = ((void*)0), *item = ((void*)0);
    _buffer_info_t *info = ((void*)0), *old_info = ((void*)0);

    if (_buffer_info_cache == ((void*)0)) {
        _buffer_info_cache = PyDict_New();
        if (_buffer_info_cache == ((void*)0)) {
            return ((void*)0);
        }
    }


    info = _buffer_info_new(obj);
    if (info == ((void*)0)) {
        return ((void*)0);
    }


    key = PyLong_FromVoidPtr((void*)obj);
    if (key == ((void*)0)) {
        goto fail;
    }
    item_list = PyDict_GetItem(_buffer_info_cache, key);

    if (item_list != ((void*)0)) {
        Py_INCREF(item_list);
        if (PyList_GET_SIZE(item_list) > 0) {
            item = PyList_GetItem(item_list, PyList_GET_SIZE(item_list) - 1);
            old_info = (_buffer_info_t*)PyLong_AsVoidPtr(item);

            if (_buffer_info_cmp(info, old_info) == 0) {
                _buffer_info_free(info);
                info = old_info;
            }
        }
    }
    else {
        item_list = PyList_New(0);
        if (item_list == ((void*)0)) {
            goto fail;
        }
        if (PyDict_SetItem(_buffer_info_cache, key, item_list) != 0) {
            goto fail;
        }
    }

    if (info != old_info) {

        item = PyLong_FromVoidPtr((void*)info);
        if (item == ((void*)0)) {
            goto fail;
        }
        PyList_Append(item_list, item);
        Py_DECREF(item);
    }

    Py_DECREF(item_list);
    Py_DECREF(key);
    return info;

fail:
    if (info != ((void*)0) && info != old_info) {
        _buffer_info_free(info);
    }
    Py_XDECREF(item_list);
    Py_XDECREF(key);
    return ((void*)0);
}
