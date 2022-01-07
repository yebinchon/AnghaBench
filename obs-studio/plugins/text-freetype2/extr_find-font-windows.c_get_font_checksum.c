
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct dstr {int len; int * array; int member_0; } ;
struct TYPE_4__ {int * cFileName; int ftLastWriteTime; } ;
typedef TYPE_1__ WIN32_FIND_DATAA ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int FILETIME ;


 int CSIDL_FONTS ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileA (int *,TYPE_1__*) ;
 scalar_t__ FindNextFileA (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LOG_WARNING ;
 int MAX_PATH ;
 int SHGFP_TYPE_CURRENT ;
 scalar_t__ SHGetFolderPathA (int *,int ,int *,int ,int *) ;
 scalar_t__ S_OK ;
 int blog (int ,char*) ;
 int calc_crc32 (int ,int *,int) ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 int dstr_reserve (struct dstr*,int ) ;
 int dstr_resize (struct dstr*,int) ;
 int strlen (int *) ;

uint32_t get_font_checksum(void)
{
 uint32_t checksum = 0;
 struct dstr path = {0};
 HANDLE handle;
 WIN32_FIND_DATAA wfd;

 dstr_reserve(&path, MAX_PATH);

 HRESULT res = SHGetFolderPathA(((void*)0), CSIDL_FONTS, ((void*)0),
           SHGFP_TYPE_CURRENT, path.array);
 if (res != S_OK) {
  blog(LOG_WARNING, "Error finding windows font folder");
  return 0;
 }

 path.len = strlen(path.array);
 dstr_cat(&path, "\\*.*");

 handle = FindFirstFileA(path.array, &wfd);
 if (handle == INVALID_HANDLE_VALUE)
  goto free_string;

 dstr_resize(&path, path.len - 4);

 do {
  checksum = calc_crc32(checksum, &wfd.ftLastWriteTime,
          sizeof(FILETIME));
  checksum = calc_crc32(checksum, wfd.cFileName,
          strlen(wfd.cFileName));
 } while (FindNextFileA(handle, &wfd));

 FindClose(handle);

free_string:
 dstr_free(&path);
 return checksum;
}
