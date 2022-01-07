
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; } ;


 int dstr_cat (struct dstr*,char const*) ;
 int dstr_copy (struct dstr*,char const*) ;
 int os_file_exists (int ) ;

__attribute__((used)) static inline bool check_path(const char *data, const char *path,
         struct dstr *output)
{
 dstr_copy(output, path);
 dstr_cat(output, data);

 return os_file_exists(output->array);
}
