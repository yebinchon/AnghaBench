
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_hash_t ;
typedef int PyObject ;
typedef int PyArray_Descr ;


 int PyErr_SetString (int ,char*) ;
 int PyExc_SystemError ;
 int * PyList_AsTuple (int *) ;
 int * PyList_New (int ) ;
 int PyObject_Hash (int *) ;
 int Py_DECREF (int *) ;
 int _array_descr_walk (int *,int *) ;

__attribute__((used)) static int _PyArray_DescrHashImp(PyArray_Descr *descr, npy_hash_t *hash)
{
    PyObject *l, *tl;
    int st;

    l = PyList_New(0);
    if (l == ((void*)0)) {
        return -1;
    }

    st = _array_descr_walk(descr, l);
    if (st) {
        Py_DECREF(l);
        return -1;
    }





    tl = PyList_AsTuple(l);
    Py_DECREF(l);
    if (tl == ((void*)0))
        return -1;

    *hash = PyObject_Hash(tl);
    Py_DECREF(tl);
    if (*hash == -1) {





        return -1;
    }

    return 0;
}
