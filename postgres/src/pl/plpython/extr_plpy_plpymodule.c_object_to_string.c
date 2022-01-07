
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int * PyObject_Str (int *) ;
 int PyString_AsString (int *) ;
 int Py_DECREF (int *) ;
 char* pstrdup (int ) ;

__attribute__((used)) static char *
object_to_string(PyObject *obj)
{
 if (obj)
 {
  PyObject *so = PyObject_Str(obj);

  if (so != ((void*)0))
  {
   char *str;

   str = pstrdup(PyString_AsString(so));
   Py_DECREF(so);

   return str;
  }
 }

 return ((void*)0);
}
