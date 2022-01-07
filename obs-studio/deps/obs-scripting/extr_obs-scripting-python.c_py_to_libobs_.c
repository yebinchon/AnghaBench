
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swig_type_info ;
typedef int PyObject ;


 int SWIG_ConvertPtr (int *,void*,int *,int ) ;
 int SWIG_IsOK (int) ;
 int * SWIG_TypeQuery (char const*) ;
 int warn (char*,char const*,int,char const*,char*,char const*) ;

bool py_to_libobs_(const char *type, PyObject *py_in, void *libobs_out,
     const char *id, const char *func, int line)
{
 swig_type_info *info = SWIG_TypeQuery(type);
 if (info == ((void*)0)) {
  warn("%s:%d: SWIG could not find type: %s%s%s", func, line,
       id ? id : "", id ? "::" : "", type);
  return 0;
 }

 int ret = SWIG_ConvertPtr(py_in, libobs_out, info, 0);
 if (!SWIG_IsOK(ret)) {
  warn("%s:%d: SWIG failed to convert python object to obs "
       "object: %s%s%s",
       func, line, id ? id : "", id ? "::" : "", type);
  return 0;
 }

 return 1;
}
