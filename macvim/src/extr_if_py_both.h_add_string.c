
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 scalar_t__ PyList_Append (int *,int *) ;
 int * PyString_FromString (char*) ;
 int Py_DECREF (int *) ;

__attribute__((used)) static int
add_string(PyObject *list, char *s)
{
    PyObject *string;

    if (!(string = PyString_FromString(s)))
 return -1;

    if (PyList_Append(list, string))
    {
 Py_DECREF(string);
 return -1;
    }

    Py_DECREF(string);
    return 0;
}
