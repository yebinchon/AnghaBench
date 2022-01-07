
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct obs_module_path {int bin; } ;
struct dstr {int array; int member_0; } ;
struct TYPE_6__ {size_t gl_pathc; TYPE_1__* gl_pathv; } ;
typedef TYPE_2__ os_glob_t ;
typedef int obs_find_module_callback_t ;
struct TYPE_5__ {int directory; int path; } ;


 int dstr_cat (struct dstr*,int ) ;
 int dstr_cat_ch (struct dstr*,char) ;
 int dstr_copy (struct dstr*,int ) ;
 char dstr_end (struct dstr*) ;
 int dstr_free (struct dstr*) ;
 int dstr_is_empty (struct dstr*) ;
 int dstr_resize (struct dstr*,char*) ;
 int get_module_extension () ;
 scalar_t__ os_glob (int,int ,TYPE_2__**) ;
 int os_globfree (TYPE_2__*) ;
 int process_found_module (struct obs_module_path*,int ,int,int ,void*) ;
 char* strstr (int,char*) ;

__attribute__((used)) static void find_modules_in_path(struct obs_module_path *omp,
     obs_find_module_callback_t callback,
     void *param)
{
 struct dstr search_path = {0};
 char *module_start;
 bool search_directories = 0;
 os_glob_t *gi;

 dstr_copy(&search_path, omp->bin);

 module_start = strstr(search_path.array, "%module%");
 if (module_start) {
  dstr_resize(&search_path, module_start - search_path.array);
  search_directories = 1;
 }

 if (!dstr_is_empty(&search_path) && dstr_end(&search_path) != '/')
  dstr_cat_ch(&search_path, '/');

 dstr_cat_ch(&search_path, '*');
 if (!search_directories)
  dstr_cat(&search_path, get_module_extension());

 if (os_glob(search_path.array, 0, &gi) == 0) {
  for (size_t i = 0; i < gi->gl_pathc; i++) {
   if (search_directories == gi->gl_pathv[i].directory)
    process_found_module(omp, gi->gl_pathv[i].path,
           search_directories,
           callback, param);
  }

  os_globfree(gi);
 }

 dstr_free(&search_path);
}
