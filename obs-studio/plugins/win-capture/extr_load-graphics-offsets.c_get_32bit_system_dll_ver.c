
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;
struct win_version_info {int dummy; } ;
typedef int UINT ;


 int GetLastError () ;
 int GetSystemDirectoryW (char*,int) ;
 int GetSystemWow64DirectoryW (char*,int) ;
 int LOG_ERROR ;
 int MAX_PATH ;
 int blog (int ,char*,int ) ;
 int get_dll_ver (char*,struct win_version_info*) ;
 int wcscat (char*,char const*) ;

__attribute__((used)) static bool get_32bit_system_dll_ver(const wchar_t *system_lib,
         struct win_version_info *ver)
{
 wchar_t path[MAX_PATH];
 UINT ret;




 ret = GetSystemDirectoryW(path, MAX_PATH);

 if (!ret) {
  blog(LOG_ERROR,
       "Failed to get windows 32bit system path: "
       "%lu",
       GetLastError());
  return 0;
 }

 wcscat(path, L"\\");
 wcscat(path, system_lib);
 return get_dll_ver(path, ver);
}
