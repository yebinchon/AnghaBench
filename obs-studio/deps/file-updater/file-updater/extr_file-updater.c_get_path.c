
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; int member_0; } ;


 int dstr_cat (struct dstr*,char const*) ;
 int dstr_cat_ch (struct dstr*,char) ;
 int dstr_copy (struct dstr*,char const*) ;
 char dstr_end (struct dstr*) ;

__attribute__((used)) static char *get_path(const char *dir, const char *file)
{
 struct dstr str = {0};

 dstr_copy(&str, dir);

 if (str.array && dstr_end(&str) != '/' && dstr_end(&str) != '\\')
  dstr_cat_ch(&str, '/');

 dstr_cat(&str, file);
 return str.array;
}
