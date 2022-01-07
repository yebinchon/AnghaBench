
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ver ;
typedef scalar_t__ uint32_t ;
struct serializer {int dummy; } ;
typedef int old_checksum ;


 int bfree (char*) ;
 int file_input_serializer_free (struct serializer*) ;
 int file_input_serializer_init (struct serializer*,char*) ;
 scalar_t__ font_cache_ver ;
 scalar_t__ get_font_checksum () ;
 int load_cached_font_list (struct serializer*) ;
 char* obs_module_config_path (char*) ;
 int read_data (struct serializer*,scalar_t__*,int) ;
 int s_read (struct serializer*,scalar_t__*,int) ;

bool load_cached_os_font_list(void)
{
 char *file_name = obs_module_config_path("font_data.bin");
 uint32_t old_checksum;
 uint32_t new_checksum;
 struct serializer s;
 uint32_t ver;
 bool success;

 success = file_input_serializer_init(&s, file_name);
 bfree(file_name);

 if (!success)
  return 0;

 success = read_data(&s, &ver, sizeof(ver));

 if (!success || ver != font_cache_ver) {
  success = 0;
  goto finish;
 }

 success = s_read(&s, &old_checksum, sizeof(old_checksum));
 new_checksum = get_font_checksum();

 if (!success || old_checksum != new_checksum) {
  success = 0;
  goto finish;
 }

 success = load_cached_font_list(&s);

finish:
 file_input_serializer_free(&s);
 return success;
}
