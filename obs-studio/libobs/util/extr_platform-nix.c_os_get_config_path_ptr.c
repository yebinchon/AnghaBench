
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; } ;


 int bcrash (char*) ;
 int dstr_cat (struct dstr*,char const*) ;
 int dstr_init_copy (struct dstr*,char*) ;
 char* getenv (char*) ;

char *os_get_config_path_ptr(const char *name)
{
 char *path_ptr = getenv("HOME");
 if (path_ptr == ((void*)0))
  bcrash("Could not get $HOME\n");

 struct dstr path;
 dstr_init_copy(&path, path_ptr);
 dstr_cat(&path, "/.");
 dstr_cat(&path, name);
 return path.array;

}
