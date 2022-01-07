
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_T ;
typedef int PyTypeObject ;
typedef int PyObject ;


 int * ListNew (int *,int *) ;
 int N_ (char*) ;
 int PyArg_ParseTuple (int *,char*,int **) ;
 int * PyDict_New () ;
 int PyErr_SET_STRING (int ,int ) ;
 int PyExc_TypeError ;
 int Py_DECREF (int *) ;
 int list_py_concat (int *,int *,int *) ;
 int list_unref (int *) ;
 int * py_list_alloc () ;

__attribute__((used)) static PyObject *
ListConstructor(PyTypeObject *subtype, PyObject *args, PyObject *kwargs)
{
    list_T *list;
    PyObject *obj = ((void*)0);

    if (kwargs)
    {
 PyErr_SET_STRING(PyExc_TypeError,
  N_("list constructor does not accept keyword arguments"));
 return ((void*)0);
    }

    if (!PyArg_ParseTuple(args, "|O", &obj))
 return ((void*)0);

    if (!(list = py_list_alloc()))
 return ((void*)0);

    if (obj)
    {
 PyObject *lookup_dict;

 if (!(lookup_dict = PyDict_New()))
 {
     list_unref(list);
     return ((void*)0);
 }

 if (list_py_concat(list, obj, lookup_dict) == -1)
 {
     Py_DECREF(lookup_dict);
     list_unref(list);
     return ((void*)0);
 }

 Py_DECREF(lookup_dict);
    }

    return ListNew(subtype, list);
}
