
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; } ;


 scalar_t__ check_path (char const*,char*,struct dstr*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init (struct dstr*) ;

char *find_libobs_data_file(const char *file)
{
 struct dstr path;
 dstr_init(&path);

 if (check_path(file, "data/libobs/", &path))
  return path.array;

 if (check_path(file, "../../data/libobs/", &path))
  return path.array;

 dstr_free(&path);
 return ((void*)0);
}
