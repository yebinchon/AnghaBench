
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dstr {char* array; int member_0; } ;
struct TYPE_3__ {int data_path; } ;
typedef TYPE_1__ obs_module_t ;


 int dstr_cat (struct dstr*,char const*) ;
 int dstr_cat_ch (struct dstr*,char) ;
 int dstr_copy (struct dstr*,int ) ;
 char dstr_end (struct dstr*) ;
 int dstr_free (struct dstr*) ;
 int dstr_is_empty (struct dstr*) ;
 int os_file_exists (char*) ;

char *obs_find_module_file(obs_module_t *module, const char *file)
{
 struct dstr output = {0};

 if (!file)
  file = "";

 if (!module)
  return ((void*)0);

 dstr_copy(&output, module->data_path);
 if (!dstr_is_empty(&output) && dstr_end(&output) != '/' && *file)
  dstr_cat_ch(&output, '/');
 dstr_cat(&output, file);

 if (!os_file_exists(output.array))
  dstr_free(&output);
 return output.array;
}
