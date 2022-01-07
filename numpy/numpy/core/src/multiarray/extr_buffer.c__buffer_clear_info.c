
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _buffer_info_t ;
typedef int PyObject ;


 int PyDict_DelItem (int *,int *) ;
 int * PyDict_GetItem (int *,int *) ;
 int * PyList_GET_ITEM (int *,int) ;
 int PyList_GET_SIZE (int *) ;
 scalar_t__ PyLong_AsVoidPtr (int *) ;
 int * PyLong_FromVoidPtr (void*) ;
 int Py_DECREF (int *) ;
 int * _buffer_info_cache ;
 int _buffer_info_free (int *) ;

__attribute__((used)) static void
_buffer_clear_info(PyObject *arr)
{
    PyObject *key, *item_list, *item;
    _buffer_info_t *info;
    int k;

    if (_buffer_info_cache == ((void*)0)) {
        return;
    }

    key = PyLong_FromVoidPtr((void*)arr);
    item_list = PyDict_GetItem(_buffer_info_cache, key);
    if (item_list != ((void*)0)) {
        for (k = 0; k < PyList_GET_SIZE(item_list); ++k) {
            item = PyList_GET_ITEM(item_list, k);
            info = (_buffer_info_t*)PyLong_AsVoidPtr(item);
            _buffer_info_free(info);
        }
        PyDict_DelItem(_buffer_info_cache, key);
    }

    Py_DECREF(key);
}
