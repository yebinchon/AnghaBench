
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct os_dir {int first; int wfd; int handle; } ;
struct dstr {int len; int array; int member_0; } ;
typedef struct os_dir os_dir_t ;
typedef int WIN32_FIND_DATA ;
typedef int HANDLE ;


 int FindFirstFileW (int *,int *) ;
 int INVALID_HANDLE_VALUE ;
 int bfree (int *) ;
 struct os_dir* bzalloc (int) ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_copy (struct dstr*,char const*) ;
 int dstr_free (struct dstr*) ;
 scalar_t__ os_utf8_to_wcs_ptr (int ,int ,int **) ;

os_dir_t *os_opendir(const char *path)
{
 struct dstr path_str = {0};
 struct os_dir *dir = ((void*)0);
 WIN32_FIND_DATA wfd;
 HANDLE handle;
 wchar_t *w_path;

 dstr_copy(&path_str, path);
 dstr_cat(&path_str, "/*.*");

 if (os_utf8_to_wcs_ptr(path_str.array, path_str.len, &w_path) > 0) {
  handle = FindFirstFileW(w_path, &wfd);
  if (handle != INVALID_HANDLE_VALUE) {
   dir = bzalloc(sizeof(struct os_dir));
   dir->handle = handle;
   dir->first = 1;
   dir->wfd = wfd;
  }

  bfree(w_path);
 }

 dstr_free(&path_str);

 return dir;
}
