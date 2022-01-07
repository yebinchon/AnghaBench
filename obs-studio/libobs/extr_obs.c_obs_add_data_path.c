
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int dummy; } ;


 int core_module_paths ;
 int da_push_back (int ,struct dstr*) ;
 struct dstr* da_push_back_new (int ) ;
 int dstr_init_copy (struct dstr*,char const*) ;

void obs_add_data_path(const char *path)
{
 struct dstr *new_path = da_push_back_new(core_module_paths);
 dstr_init_copy(new_path, path);
 da_push_back(core_module_paths, new_path);
}
