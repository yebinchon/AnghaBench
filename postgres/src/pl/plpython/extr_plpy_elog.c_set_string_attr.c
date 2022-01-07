
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyObject_SetAttrString (int *,char*,int *) ;
 int * PyString_FromString (char*) ;
 int Py_DECREF (int *) ;
 int Py_INCREF (int *) ;
 int * Py_None ;

__attribute__((used)) static bool
set_string_attr(PyObject *obj, char *attrname, char *str)
{
 int result;
 PyObject *val;

 if (str != ((void*)0))
 {
  val = PyString_FromString(str);
  if (!val)
   return 0;
 }
 else
 {
  val = Py_None;
  Py_INCREF(Py_None);
 }

 result = PyObject_SetAttrString(obj, attrname, val);
 Py_DECREF(val);

 return result != -1;
}
