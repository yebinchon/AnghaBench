
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct dstr {int array; int member_0; scalar_t__ len; } ;
struct TYPE_8__ {int dwFileAttributes; char* cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAA ;
struct TYPE_9__ {scalar_t__ num_faces; } ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ HANDLE ;
typedef scalar_t__ FT_Long ;
typedef TYPE_2__* FT_Face ;
typedef scalar_t__ FT_Error ;


 int CSIDL_FONTS ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FT_Done_Face (TYPE_2__*) ;
 scalar_t__ FT_New_Face (int ,int ,scalar_t__,TYPE_2__**) ;
 int FindClose (scalar_t__) ;
 scalar_t__ FindFirstFileA (int ,TYPE_1__*) ;
 scalar_t__ FindNextFileA (scalar_t__,TYPE_1__*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int LOG_WARNING ;
 int MAX_PATH ;
 int SHGFP_TYPE_CURRENT ;
 scalar_t__ SHGetFolderPathA (int *,int ,int *,int ,int ) ;
 scalar_t__ S_OK ;
 int blog (int ,char*) ;
 int build_font_path_info (TYPE_2__*,int ,int ) ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_copy_dstr (struct dstr*,struct dstr*) ;
 int dstr_free (struct dstr*) ;
 int dstr_reserve (struct dstr*,int ) ;
 int dstr_resize (struct dstr*,scalar_t__) ;
 int ft2_lib ;
 int save_font_list () ;
 scalar_t__ strlen (int ) ;

void load_os_font_list(void)
{
 struct dstr path = {0};
 HANDLE handle;
 WIN32_FIND_DATAA wfd;

 dstr_reserve(&path, MAX_PATH);

 HRESULT res = SHGetFolderPathA(((void*)0), CSIDL_FONTS, ((void*)0),
           SHGFP_TYPE_CURRENT, path.array);
 if (res != S_OK) {
  blog(LOG_WARNING, "Error finding windows font folder");
  return;
 }

 path.len = strlen(path.array);
 dstr_cat(&path, "\\*.*");

 handle = FindFirstFileA(path.array, &wfd);
 if (handle == INVALID_HANDLE_VALUE)
  goto free_string;

 dstr_resize(&path, path.len - 4);

 do {
  struct dstr full_path = {0};
  FT_Face face;
  FT_Long idx = 0;
  FT_Long max_faces = 1;

  if (wfd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
   continue;

  dstr_copy_dstr(&full_path, &path);
  dstr_cat(&full_path, "\\");
  dstr_cat(&full_path, wfd.cFileName);

  while (idx < max_faces) {
   FT_Error ret = FT_New_Face(ft2_lib, full_path.array,
         idx, &face);
   if (ret != 0)
    break;

   build_font_path_info(face, idx++, full_path.array);
   max_faces = face->num_faces;
   FT_Done_Face(face);
  }

  dstr_free(&full_path);
 } while (FindNextFileA(handle, &wfd));

 FindClose(handle);

 save_font_list();

free_string:
 dstr_free(&path);
}
