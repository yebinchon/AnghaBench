
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_bool ;
typedef int PyObject ;


 int NPY_FALSE ;
 int NPY_TRUE ;
 int PyBaseString_Check (int *) ;
 int PyList_CheckExact (int *) ;
 int * PyList_GET_ITEM (int *,int) ;
 int PyList_GET_SIZE (int *) ;

__attribute__((used)) static npy_bool
_is_list_of_strings(PyObject *obj)
{
    int seqlen, i;
    if (!PyList_CheckExact(obj)) {
        return NPY_FALSE;
    }
    seqlen = PyList_GET_SIZE(obj);
    for (i = 0; i < seqlen; i++) {
        PyObject *item = PyList_GET_ITEM(obj, i);
        if (!PyBaseString_Check(item)) {
            return NPY_FALSE;
        }
    }

    return NPY_TRUE;
}
