
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; scalar_t__ len; int member_0; } ;


 int dstr_copy (struct dstr*,char const*) ;
 int dstr_resize (struct dstr*,scalar_t__) ;
 char* get_module_extension () ;
 size_t strlen (char const*) ;

__attribute__((used)) static inline char *get_module_name(const char *file)
{
 static size_t ext_len = 0;
 struct dstr name = {0};

 if (ext_len == 0) {
  const char *ext = get_module_extension();
  ext_len = strlen(ext);
 }

 dstr_copy(&name, file);
 dstr_resize(&name, name.len - ext_len);
 return name.array;
}
