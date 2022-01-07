
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Py_ssize_t ;
typedef int PyObject ;
typedef int PyInt ;
typedef int ListObject ;


 int * ListIndex (int *,int) ;
 int N_ (char*) ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyExc_ValueError ;
 int * PyList_New (int) ;
 int PyList_SET_ITEM (int *,int,int *) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static PyObject *
ListSlice(ListObject *self, Py_ssize_t first, Py_ssize_t step,
   Py_ssize_t slicelen)
{
    PyInt i;
    PyObject *list;

    if (step == 0)
    {
 PyErr_SET_STRING(PyExc_ValueError, N_("slice step cannot be zero"));
 return ((void*)0);
    }

    list = PyList_New(slicelen);
    if (list == ((void*)0))
 return ((void*)0);

    for (i = 0; i < slicelen; ++i)
    {
 PyObject *item;

 item = ListIndex(self, first + i*step);
 if (item == ((void*)0))
 {
     Py_DECREF(list);
     return ((void*)0);
 }

 PyList_SET_ITEM(list, i, item);
    }

    return list;
}
