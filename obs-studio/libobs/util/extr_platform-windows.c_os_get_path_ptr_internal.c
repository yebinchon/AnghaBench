
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct dstr {char* array; } ;


 int MAX_PATH ;
 int SHGFP_TYPE_CURRENT ;
 int SHGetFolderPathW (int *,int,int *,int ,int *) ;
 int dstr_cat (struct dstr*,char const*) ;
 int dstr_init_move_array (struct dstr*,char*) ;
 int os_wcs_to_utf8_ptr (int *,int ,char**) ;

__attribute__((used)) static char *os_get_path_ptr_internal(const char *name, int folder)
{
 char *ptr;
 wchar_t path_utf16[MAX_PATH];
 struct dstr path;

 SHGetFolderPathW(((void*)0), folder, ((void*)0), SHGFP_TYPE_CURRENT, path_utf16);

 os_wcs_to_utf8_ptr(path_utf16, 0, &ptr);
 dstr_init_move_array(&path, ptr);
 dstr_cat(&path, "\\");
 dstr_cat(&path, name);
 return path.array;
}
