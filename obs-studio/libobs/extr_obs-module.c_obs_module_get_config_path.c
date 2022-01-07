
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dstr {char* array; int member_0; } ;
struct TYPE_4__ {char const* mod_name; } ;
typedef TYPE_1__ obs_module_t ;
struct TYPE_5__ {int module_config_path; } ;


 int dstr_cat (struct dstr*,char const*) ;
 int dstr_cat_ch (struct dstr*,char) ;
 int dstr_copy (struct dstr*,int ) ;
 char dstr_end (struct dstr*) ;
 int dstr_is_empty (struct dstr*) ;
 TYPE_3__* obs ;

char *obs_module_get_config_path(obs_module_t *module, const char *file)
{
 struct dstr output = {0};

 dstr_copy(&output, obs->module_config_path);
 if (!dstr_is_empty(&output) && dstr_end(&output) != '/')
  dstr_cat_ch(&output, '/');
 dstr_cat(&output, module->mod_name);
 dstr_cat_ch(&output, '/');
 dstr_cat(&output, file);

 return output.array;
}
