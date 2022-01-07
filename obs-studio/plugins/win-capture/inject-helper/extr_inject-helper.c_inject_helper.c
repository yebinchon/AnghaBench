
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ DWORD ;


 int INJECT_ERROR_INVALID_PARAMS ;
 int inject_library_full (scalar_t__,int const*) ;
 int inject_library_safe (scalar_t__,int const*) ;
 scalar_t__ wcstol (int *,int *,int) ;

__attribute__((used)) static int inject_helper(wchar_t *argv[], const wchar_t *dll)
{
 DWORD id;
 DWORD use_safe_inject;

 use_safe_inject = wcstol(argv[2], ((void*)0), 10);

 id = wcstol(argv[3], ((void*)0), 10);
 if (id == 0) {
  return INJECT_ERROR_INVALID_PARAMS;
 }

 return use_safe_inject ? inject_library_safe(id, dll)
          : inject_library_full(id, dll);
}
