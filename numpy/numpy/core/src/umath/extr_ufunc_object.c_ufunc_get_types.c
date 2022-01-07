
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ntypes; int nin; int nout; int * types; } ;
typedef TYPE_1__ PyUFuncObject ;
typedef int PyObject ;


 int PyArray_free (char*) ;
 char* PyArray_malloc (int) ;
 int * PyList_New (int) ;
 int PyList_SET_ITEM (int *,int,int *) ;
 int * PyUString_FromStringAndSize (char*,int) ;
 char _typecharfromnum (int ) ;

__attribute__((used)) static PyObject *
ufunc_get_types(PyUFuncObject *ufunc)
{

    PyObject *list;
    PyObject *str;
    int k, j, n, nt = ufunc->ntypes;
    int ni = ufunc->nin;
    int no = ufunc->nout;
    char *t;
    list = PyList_New(nt);
    if (list == ((void*)0)) {
        return ((void*)0);
    }
    t = PyArray_malloc(no+ni+2);
    n = 0;
    for (k = 0; k < nt; k++) {
        for (j = 0; j<ni; j++) {
            t[j] = _typecharfromnum(ufunc->types[n]);
            n++;
        }
        t[ni] = '-';
        t[ni+1] = '>';
        for (j = 0; j < no; j++) {
            t[ni + 2 + j] = _typecharfromnum(ufunc->types[n]);
            n++;
        }
        str = PyUString_FromStringAndSize(t, no + ni + 2);
        PyList_SET_ITEM(list, k, str);
    }
    PyArray_free(t);
    return list;
}
