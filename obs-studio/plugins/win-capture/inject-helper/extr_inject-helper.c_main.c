
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
typedef int LPWSTR ;
typedef scalar_t__ DWORD ;


 int * CommandLineToArgvW (int ,int*) ;
 int GetCommandLineW () ;
 scalar_t__ GetModuleFileNameW (int *,scalar_t__*,int) ;
 int INJECT_ERROR_INVALID_PARAMS ;
 int LocalFree (int *) ;
 int MAX_PATH ;
 int SEM_FAILCRITICALERRORS ;
 int SetErrorMode (int ) ;
 int UNUSED_PARAMETER (char**) ;
 int inject_helper (int *,scalar_t__*) ;
 int load_debug_privilege () ;
 int wcscpy (scalar_t__*,int ) ;
 scalar_t__* wcsrchr (scalar_t__*,char) ;

int main(int argc, char *argv_ansi[])
{
 wchar_t dll_path[MAX_PATH];
 LPWSTR pCommandLineW;
 LPWSTR *argv;
 int ret = INJECT_ERROR_INVALID_PARAMS;

 SetErrorMode(SEM_FAILCRITICALERRORS);
 load_debug_privilege();

 pCommandLineW = GetCommandLineW();
 argv = CommandLineToArgvW(pCommandLineW, &argc);
 if (argv && argc == 4) {
  DWORD size = GetModuleFileNameW(((void*)0), dll_path, MAX_PATH);
  if (size) {
   wchar_t *name_start = wcsrchr(dll_path, '\\');
   if (name_start) {
    *(++name_start) = 0;
    wcscpy(name_start, argv[1]);
    ret = inject_helper(argv, dll_path);
   }
  }
 }
 LocalFree(argv);

 UNUSED_PARAMETER(argv_ansi);
 return ret;
}
