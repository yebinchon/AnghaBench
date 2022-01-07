
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct dstr {char* array; } ;


 int GetModuleFileNameW (int *,int *,int) ;
 int MAX_PATH ;
 int dstr_cat (struct dstr*,char const*) ;
 int dstr_init_move_array (struct dstr*,char*) ;
 int dstr_replace (struct dstr*,char*,char*) ;
 int dstr_resize (struct dstr*,size_t) ;
 int os_wcs_to_utf8_ptr (int *,int ,char**) ;
 char* strrchr (char*,char) ;

char *os_get_executable_path_ptr(const char *name)
{
 char *ptr;
 char *slash;
 wchar_t path_utf16[MAX_PATH];
 struct dstr path;

 GetModuleFileNameW(((void*)0), path_utf16, MAX_PATH);

 os_wcs_to_utf8_ptr(path_utf16, 0, &ptr);
 dstr_init_move_array(&path, ptr);
 dstr_replace(&path, "\\", "/");
 slash = strrchr(path.array, '/');
 if (slash) {
  size_t len = slash - path.array + 1;
  dstr_resize(&path, len);
 }

 if (name && *name) {
  dstr_cat(&path, name);
 }

 return path.array;
}
