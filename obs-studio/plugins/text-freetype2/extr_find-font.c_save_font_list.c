
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct serializer {int dummy; } ;
struct font_path_info {int full_len; int face_len; int is_bitmap; int num_sizes; int bold; int italic; int index; int path; int sizes; int face_and_style; } ;
struct TYPE_2__ {size_t num; struct font_path_info* array; } ;


 int bfree (char*) ;
 int do_write (int) ;
 int file_output_serializer_free (struct serializer*) ;
 int file_output_serializer_init_safe (struct serializer*,char*,char*) ;
 int font_cache_ver ;
 TYPE_1__ font_list ;
 int get_font_checksum () ;
 char* obs_module_config_path (char*) ;
 int write_data (struct serializer*,int ,int) ;
 int write_str (struct serializer*,int ) ;
 int write_var (struct serializer*,int) ;

void save_font_list(void)
{
 char *file_name = obs_module_config_path("font_data.bin");
 uint32_t font_checksum = get_font_checksum();
 int font_count = (int)font_list.num;
 struct serializer s;
 bool success = 0;

 if (font_checksum)
  success =
   file_output_serializer_init_safe(&s, file_name, "tmp");
 bfree(file_name);

 if (!success)
  return;

 success = write_var(&s, font_cache_ver);
 if (!success)
  return;
 success = write_var(&s, font_checksum);
 if (!success)
  return;
 success = write_var(&s, font_count);
 if (!success)
  return;






 for (size_t i = 0; i < font_list.num; i++) {
  struct font_path_info *info = &font_list.array[i];

  success = write_str(&s, info->face_and_style);
  if (!success)
   break;

  success = write_var(&s, info->full_len); if (!success) break;
  success = write_var(&s, info->face_len); if (!success) break;
  success = write_var(&s, info->is_bitmap); if (!success) break;
  success = write_var(&s, info->num_sizes); if (!success) break;

  success = write_data(&s, info->sizes,
         sizeof(int) * info->num_sizes);
  if (!success)
   break;

  success = write_var(&s, info->bold); if (!success) break;

  success = write_str(&s, info->path);
  if (!success)
   break;

  success = write_var(&s, info->italic); if (!success) break;
  success = write_var(&s, info->index); if (!success) break;
 }



 file_output_serializer_free(&s);
}
