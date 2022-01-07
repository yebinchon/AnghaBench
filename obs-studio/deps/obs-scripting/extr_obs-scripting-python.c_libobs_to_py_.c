
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swig_type_info ;
typedef int PyObject ;


 int * Py_None ;
 int * SWIG_NewPointerObj (void*,int *,int) ;
 int * SWIG_TypeQuery (char const*) ;
 int warn (char*,char const*,int,char const*,char*,char const*) ;

bool libobs_to_py_(const char *type, void *libobs_in, bool ownership,
     PyObject **py_out, const char *id, const char *func,
     int line)
{
 swig_type_info *info = SWIG_TypeQuery(type);
 if (info == ((void*)0)) {
  warn("%s:%d: SWIG could not find type: %s%s%s", func, line,
       id ? id : "", id ? "::" : "", type);
  return 0;
 }

 *py_out = SWIG_NewPointerObj(libobs_in, info, (int)ownership);
 if (*py_out == Py_None) {
  warn("%s:%d: SWIG failed to convert obs object to python "
       "object: %s%s%s",
       func, line, id ? id : "", id ? "::" : "", type);
  return 0;
 }

 return 1;
}
