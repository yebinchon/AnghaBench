
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; } ;


 int LOG_ERROR ;
 int RTLD_FIRST ;
 int RTLD_LAZY ;
 int blog (int ,char*,char const*,int ,int ) ;
 int dlerror () ;
 void* dlopen (int ,int) ;
 int dstr_cat (struct dstr*,char*) ;
 int dstr_find (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 int dstr_init_copy (struct dstr*,char const*) ;

void *os_dlopen(const char *path)
{
 struct dstr dylib_name;

 if (!path)
  return ((void*)0);

 dstr_init_copy(&dylib_name, path);



 if (!dstr_find(&dylib_name, ".so"))

  dstr_cat(&dylib_name, ".so");




 void *res = dlopen(dylib_name.array, RTLD_LAZY);

 if (!res)
  blog(LOG_ERROR, "os_dlopen(%s->%s): %s\n", path,
       dylib_name.array, dlerror());

 dstr_free(&dylib_name);
 return res;
}
