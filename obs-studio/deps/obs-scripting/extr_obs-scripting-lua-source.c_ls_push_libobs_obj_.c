
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int swig_type_info ;
typedef int lua_State ;


 int SWIG_NewPointerObj (int *,void*,int *,int) ;
 int * SWIG_TypeQuery (int *,char const*) ;
 int warn (char*,char const*,int,char const*,char*,char const*) ;

bool ls_push_libobs_obj_(lua_State *script, const char *type, void *libobs_in,
    bool ownership, const char *id, const char *func,
    int line)
{
 swig_type_info *info = SWIG_TypeQuery(script, type);
 if (info == ((void*)0)) {
  warn("%s:%d: SWIG could not find type: %s%s%s", func, line,
       id ? id : "", id ? "::" : "", type);
  return 0;
 }

 SWIG_NewPointerObj(script, libobs_in, info, (int)ownership);
 return 1;
}
