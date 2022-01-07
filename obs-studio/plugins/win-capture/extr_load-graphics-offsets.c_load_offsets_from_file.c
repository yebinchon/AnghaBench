
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct graphics_offsets {int dummy; } ;


 int bfree (char*) ;
 int load_offsets_from_string (struct graphics_offsets*,char*) ;
 char* os_quick_read_utf8_file (char const*) ;

__attribute__((used)) static inline bool load_offsets_from_file(struct graphics_offsets *offsets,
       const char *file)
{
 char *str = os_quick_read_utf8_file(file);
 bool success = 0;
 if (str && *str)
  success = load_offsets_from_string(offsets, str);
 bfree(str);
 return success;
}
