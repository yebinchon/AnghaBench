
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ver_query_value_w_t ;
typedef scalar_t__ get_file_version_info_w_t ;
typedef scalar_t__ get_file_version_info_size_w_t ;
typedef scalar_t__ HMODULE ;


 scalar_t__ GetModuleHandleW (char*) ;
 scalar_t__ GetProcAddress (scalar_t__,char*) ;
 int LOG_ERROR ;
 scalar_t__ LoadLibraryW (char*) ;
 int blog (int ,char*) ;
 scalar_t__ get_file_version_info ;
 scalar_t__ get_file_version_info_size ;
 int ver_initialize_success ;
 int ver_initialized ;
 scalar_t__ ver_query_value ;

__attribute__((used)) static bool initialize_version_functions(void)
{
 HMODULE ver = GetModuleHandleW(L"version");

 ver_initialized = 1;

 if (!ver) {
  ver = LoadLibraryW(L"version");
  if (!ver) {
   blog(LOG_ERROR, "Failed to load windows "
     "version library");
   return 0;
  }
 }

 get_file_version_info_size =
  (get_file_version_info_size_w_t)GetProcAddress(
   ver, "GetFileVersionInfoSizeW");
 get_file_version_info = (get_file_version_info_w_t)GetProcAddress(
  ver, "GetFileVersionInfoW");
 ver_query_value =
  (ver_query_value_w_t)GetProcAddress(ver, "VerQueryValueW");

 if (!get_file_version_info_size || !get_file_version_info ||
     !ver_query_value) {
  blog(LOG_ERROR, "Failed to load windows version "
    "functions");
  return 0;
 }

 ver_initialize_success = 1;
 return 1;
}
