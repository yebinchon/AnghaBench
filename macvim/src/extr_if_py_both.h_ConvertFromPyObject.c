
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int typval_T ;
typedef int PyObject ;


 int * PyDict_New () ;
 int Py_DECREF (int *) ;
 int _ConvertFromPyObject (int *,int *,int *) ;

__attribute__((used)) static int
ConvertFromPyObject(PyObject *obj, typval_T *tv)
{
    PyObject *lookup_dict;
    int ret;

    if (!(lookup_dict = PyDict_New()))
 return -1;
    ret = _ConvertFromPyObject(obj, tv, lookup_dict);
    Py_DECREF(lookup_dict);
    return ret;
}
