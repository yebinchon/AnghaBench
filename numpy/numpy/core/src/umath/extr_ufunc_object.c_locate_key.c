
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int npy_intp ;
typedef int PyObject ;


 int PyObject_RichCompareBool (int *,int *,int ) ;
 int Py_EQ ;

__attribute__((used)) static npy_intp
locate_key(PyObject **kwnames, PyObject *key)
{
    PyObject **kwname = kwnames;
    while (*kwname != ((void*)0) && *kwname != key) {
        kwname++;
    }

    if (*kwname == ((void*)0)) {
        int cmp = 0;
        kwname = kwnames;
        while (*kwname != ((void*)0) &&
               (cmp = PyObject_RichCompareBool(key, *kwname,
                                               Py_EQ)) == 0) {
            kwname++;
        }
        if (cmp < 0) {
            return -1;
        }
    }
    return kwname - kwnames;
}
