
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; scalar_t__ array; } ;
struct update_info {TYPE_1__ file_data; } ;


 int bfree (char*) ;
 char* get_path (char const*,char const*) ;
 int os_quick_write_utf8_file (char*,char*,scalar_t__,int) ;

__attribute__((used)) static inline void write_file_data(struct update_info *info,
       const char *base_path, const char *file)
{
 char *full_path = get_path(base_path, file);
 os_quick_write_utf8_file(full_path, (char *)info->file_data.array,
     info->file_data.num - 1, 0);
 bfree(full_path);
}
