
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; } ;


 int dstr_free (struct dstr*) ;
 int dstr_init_copy (struct dstr*,char const*) ;
 int dstr_replace (struct dstr*,char*,char*) ;
 char* strrchr (char*,char) ;

const char *os_get_path_extension(const char *path)
{
 struct dstr temp;
 size_t pos = 0;
 char *period;
 char *slash;

 dstr_init_copy(&temp, path);
 dstr_replace(&temp, "\\", "/");

 slash = strrchr(temp.array, '/');
 period = strrchr(temp.array, '.');
 if (period)
  pos = (size_t)(period - temp.array);

 dstr_free(&temp);

 if (!period || slash > period)
  return ((void*)0);

 return path + pos;
}
