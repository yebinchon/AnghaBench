
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfree (char*) ;
 char* get_path (char const*,char const*) ;
 int os_rename (char*,char*) ;
 int os_unlink (char*) ;

__attribute__((used)) static inline void replace_file(const char *src_base_path,
    const char *dst_base_path, const char *file)
{
 char *src_path = get_path(src_base_path, file);
 char *dst_path = get_path(dst_base_path, file);

 if (src_path && dst_path) {
  os_unlink(dst_path);
  os_rename(src_path, dst_path);
 }

 bfree(dst_path);
 bfree(src_path);
}
