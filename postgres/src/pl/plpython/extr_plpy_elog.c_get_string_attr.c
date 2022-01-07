
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyObject_GetAttrString (int *,char*) ;
 int PyString_AsString (int *) ;
 int * Py_None ;
 int Py_XDECREF (int *) ;
 char* pstrdup (int ) ;

__attribute__((used)) static void
get_string_attr(PyObject *obj, char *attrname, char **str)
{
 PyObject *val;

 val = PyObject_GetAttrString(obj, attrname);
 if (val != ((void*)0) && val != Py_None)
 {
  *str = pstrdup(PyString_AsString(val));
 }
 Py_XDECREF(val);
}
