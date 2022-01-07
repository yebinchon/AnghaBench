
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; } ;


 int dstr_free (struct dstr*) ;
 int dstr_init_copy (struct dstr*,char const*) ;
 int dstr_replace (struct dstr*,char*,char*) ;
 int recursive_mkdir (int ) ;

int os_mkdirs(const char *dir)
{
 struct dstr dir_str;
 int ret;

 dstr_init_copy(&dir_str, dir);
 dstr_replace(&dir_str, "\\", "/");
 ret = recursive_mkdir(dir_str.array);
 dstr_free(&dir_str);
 return ret;
}
