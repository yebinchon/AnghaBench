
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct dstr {int array; } ;
typedef int LPSTR ;
typedef void* HMODULE ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_PROC_NOT_FOUND ;
 int FORMAT_MESSAGE_ALLOCATE_BUFFER ;
 int FORMAT_MESSAGE_FROM_SYSTEM ;
 int FORMAT_MESSAGE_IGNORE_INSERTS ;
 int FormatMessageA (int,int *,scalar_t__,int ,int ,int ,int *) ;
 scalar_t__ GetLastError () ;
 int LANG_ENGLISH ;
 int LOG_INFO ;
 void* LoadLibraryW (int*) ;
 int LocalFree (char*) ;
 int MAKELANGID (int ,int ) ;
 int SUBLANG_ENGLISH_US ;
 int SetDllDirectoryW (int*) ;
 int bfree (int*) ;
 int blog (int ,char*,char const*,char*,scalar_t__) ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_find (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init_copy (struct dstr*,char const*) ;
 int dstr_replace (struct dstr*,char*,char*) ;
 int os_utf8_to_wcs_ptr (int ,int ,int**) ;
 int* wcsrchr (int*,int) ;

void *os_dlopen(const char *path)
{
 struct dstr dll_name;
 wchar_t *wpath;
 wchar_t *wpath_slash;
 HMODULE h_library = ((void*)0);

 if (!path)
  return ((void*)0);

 dstr_init_copy(&dll_name, path);
 dstr_replace(&dll_name, "\\", "/");
 if (!dstr_find(&dll_name, ".dll"))
  dstr_cat(&dll_name, ".dll");

 os_utf8_to_wcs_ptr(dll_name.array, 0, &wpath);




 wpath_slash = wcsrchr(wpath, L'/');
 if (wpath_slash) {
  *wpath_slash = 0;
  SetDllDirectoryW(wpath);
  *wpath_slash = L'/';
 }

 h_library = LoadLibraryW(wpath);
 bfree(wpath);
 dstr_free(&dll_name);

 if (wpath_slash)
  SetDllDirectoryW(((void*)0));

 if (!h_library) {
  DWORD error = GetLastError();



  if (error == ERROR_PROC_NOT_FOUND)
   return ((void*)0);

  char *message = ((void*)0);

  FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM |
           FORMAT_MESSAGE_IGNORE_INSERTS |
           FORMAT_MESSAGE_ALLOCATE_BUFFER,
          ((void*)0), error,
          MAKELANGID(LANG_ENGLISH, SUBLANG_ENGLISH_US),
          (LPSTR)&message, 0, ((void*)0));

  blog(LOG_INFO, "LoadLibrary failed for '%s': %s (%lu)", path,
       message, error);

  if (message)
   LocalFree(message);
 }

 return h_library;
}
