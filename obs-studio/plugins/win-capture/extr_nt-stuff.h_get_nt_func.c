
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * HANDLE ;
typedef int FARPROC ;


 int * GetModuleHandleW (char*) ;
 int GetProcAddress (int *,char const*) ;

__attribute__((used)) static FARPROC get_nt_func(const char *name)
{
 static bool initialized = 0;
 static HANDLE ntdll = ((void*)0);
 if (!initialized) {
  ntdll = GetModuleHandleW(L"ntdll");
  initialized = 1;
 }

 return GetProcAddress(ntdll, name);
}
