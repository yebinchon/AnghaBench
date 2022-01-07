
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zend_bool ;


 int E_WARNING ;
 scalar_t__ strncmp (char*,char*,int) ;
 int zend_error (int ,char*,char const*) ;
 int zend_ffi_exception_ce ;
 int zend_throw_error (int ,char*,char const*) ;

__attribute__((used)) static char *zend_ffi_parse_directives(const char *filename, char *code_pos, char **scope_name, char **lib, zend_bool preload)
{
 char *p;

 *scope_name = ((void*)0);
 *lib = ((void*)0);
 while (*code_pos == '#') {
  if (strncmp(code_pos, "#define FFI_SCOPE", sizeof("#define FFI_SCOPE") - 1) == 0
   && (code_pos[sizeof("#define FFI_SCOPE") - 1] == ' '
    || code_pos[sizeof("#define FFI_SCOPE") - 1] == '\t')) {
   p = code_pos + sizeof("#define FFI_SCOPE");
   while (*p == ' ' || *p == '\t') {
    p++;
   }
   if (*p != '"') {
    if (preload) {
     zend_error(E_WARNING, "FFI: failed pre-loading '%s', bad FFI_SCOPE define", filename);
    } else {
     zend_throw_error(zend_ffi_exception_ce, "Failed loading '%s', bad FFI_SCOPE define", filename);
    }
    return ((void*)0);
   }
   p++;
   if (*scope_name) {
    if (preload) {
     zend_error(E_WARNING, "FFI: failed pre-loading '%s', FFI_SCOPE defined twice", filename);
    } else {
     zend_throw_error(zend_ffi_exception_ce, "Failed loading '%s', FFI_SCOPE defined twice", filename);
    }
    return ((void*)0);
   }
   *scope_name = p;
   while (1) {
    if (*p == '\"') {
     *p = 0;
     p++;
     break;
    } else if (*p <= ' ') {
     if (preload) {
      zend_error(E_WARNING, "FFI: failed pre-loading '%s', bad FFI_SCOPE define", filename);
     } else {
      zend_throw_error(zend_ffi_exception_ce, "Failed loading '%s', bad FFI_SCOPE define", filename);
     }
     return ((void*)0);
    }
    p++;
   }
   while (*p == ' ' || *p == '\t') {
    p++;
   }
   while (*p == '\r' || *p == '\n') {
    p++;
   }
   code_pos = p;
  } else if (strncmp(code_pos, "#define FFI_LIB", sizeof("#define FFI_LIB") - 1) == 0
   && (code_pos[sizeof("#define FFI_LIB") - 1] == ' '
    || code_pos[sizeof("#define FFI_LIB") - 1] == '\t')) {
   p = code_pos + sizeof("#define FFI_LIB");
   while (*p == ' ' || *p == '\t') {
    p++;
   }
   if (*p != '"') {
    if (preload) {
     zend_error(E_WARNING, "FFI: failed pre-loading '%s', bad FFI_LIB define", filename);
    } else {
     zend_throw_error(zend_ffi_exception_ce, "Failed loading '%s', bad FFI_LIB define", filename);
    }
    return ((void*)0);
   }
   p++;
   if (*lib) {
    if (preload) {
     zend_error(E_WARNING, "FFI: failed pre-loading '%s', FFI_LIB defined twice", filename);
    } else {
     zend_throw_error(zend_ffi_exception_ce, "Failed loading '%s', FFI_LIB defined twice", filename);
    }
    return ((void*)0);
   }
   *lib = p;
   while (1) {
    if (*p == '\"') {
     *p = 0;
     p++;
     break;
    } else if (*p <= ' ') {
     if (preload) {
      zend_error(E_WARNING, "FFI: failed pre-loading '%s', bad FFI_LIB define", filename);
     } else {
      zend_throw_error(zend_ffi_exception_ce, "Failed loading '%s', bad FFI_LIB define", filename);
     }
     return ((void*)0);
    }
    p++;
   }
   while (*p == ' ' || *p == '\t') {
    p++;
   }
   while (*p == '\r' || *p == '\n') {
    p++;
   }
   code_pos = p;
  } else {
   break;
  }
 }
 return code_pos;
}
