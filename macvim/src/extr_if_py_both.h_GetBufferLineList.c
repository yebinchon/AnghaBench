
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int linenr_T ;
typedef int buf_T ;
typedef int PyObject ;
typedef scalar_t__ PyInt ;


 int FALSE ;
 int * LineToString (char*) ;
 int * PyList_New (scalar_t__) ;
 int PyList_SET_ITEM (int *,scalar_t__,int *) ;
 int Py_DECREF (int *) ;
 scalar_t__ ml_get_buf (int *,int ,int ) ;

__attribute__((used)) static PyObject *
GetBufferLineList(buf_T *buf, PyInt lo, PyInt hi)
{
    PyInt i;
    PyInt n = hi - lo;
    PyObject *list = PyList_New(n);

    if (list == ((void*)0))
 return ((void*)0);

    for (i = 0; i < n; ++i)
    {
 PyObject *string = LineToString(
  (char *)ml_get_buf(buf, (linenr_T)(lo+i), FALSE));


 if (string == ((void*)0))
 {
     Py_DECREF(list);
     return ((void*)0);
 }

 PyList_SET_ITEM(list, i, string);
    }






    return list;
}
