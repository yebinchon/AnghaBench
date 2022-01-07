
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,char const**) ;
 int * PyString_FromString (char*) ;
 int pfree (char*) ;
 char* quote_literal_cstr (char const*) ;

__attribute__((used)) static PyObject *
PLy_quote_nullable(PyObject *self, PyObject *args)
{
 const char *str;
 char *quoted;
 PyObject *ret;

 if (!PyArg_ParseTuple(args, "z:quote_nullable", &str))
  return ((void*)0);

 if (str == ((void*)0))
  return PyString_FromString("NULL");

 quoted = quote_literal_cstr(str);
 ret = PyString_FromString(quoted);
 pfree(quoted);

 return ret;
}
