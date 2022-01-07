
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,char const**) ;
 int * PyString_FromString (char const*) ;
 char* quote_identifier (char const*) ;

__attribute__((used)) static PyObject *
PLy_quote_ident(PyObject *self, PyObject *args)
{
 const char *str;
 const char *quoted;
 PyObject *ret;

 if (!PyArg_ParseTuple(args, "s:quote_ident", &str))
  return ((void*)0);

 quoted = quote_identifier(str);
 ret = PyString_FromString(quoted);

 return ret;
}
