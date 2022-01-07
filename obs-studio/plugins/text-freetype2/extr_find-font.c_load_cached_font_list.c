
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct serializer {int dummy; } ;
struct font_path_info {int full_len; int face_len; int is_bitmap; int num_sizes; int bold; int italic; int index; int path; int sizes; int face_and_style; } ;
struct TYPE_4__ {struct font_path_info* array; } ;


 int bmalloc (int) ;
 int da_init (TYPE_1__) ;
 int da_resize (TYPE_1__,int) ;
 int do_read (int) ;
 TYPE_1__ font_list ;
 int free_os_font_list () ;
 int read_data (struct serializer*,int ,int) ;
 int read_str (struct serializer*,int *) ;
 int read_var (struct serializer*,int) ;

__attribute__((used)) static bool load_cached_font_list(struct serializer *s)
{
 bool success = 1;
 int count;

 success = read_var(s, count);
 if (!success)
  return 0;

 da_init(font_list);
 da_resize(font_list, count);






 for (int i = 0; i < count; i++) {
  struct font_path_info *info = &font_list.array[i];

  success = read_str(s, &info->face_and_style);
  if (!success)
   break;

  success = read_var(s, info->full_len); if (!success) break;
  success = read_var(s, info->face_len); if (!success) break;
  success = read_var(s, info->is_bitmap); if (!success) break;
  success = read_var(s, info->num_sizes); if (!success) break;

  info->sizes = bmalloc(sizeof(int) * info->num_sizes);
  success = read_data(s, info->sizes,
        sizeof(int) * info->num_sizes);
  if (!success)
   break;

  success = read_var(s, info->bold); if (!success) break;

  success = read_str(s, &info->path);
  if (!success)
   break;

  success = read_var(s, info->italic); if (!success) break;
  success = read_var(s, info->index); if (!success) break;
 }



 if (!success) {
  free_os_font_list();
  return 0;
 }

 return 1;
}
