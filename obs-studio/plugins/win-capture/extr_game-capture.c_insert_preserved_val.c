
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int array; int member_0; } ;
typedef int obs_property_t ;


 int bfree (char*) ;
 int build_window_strings (char const*,char**,char**,char**) ;
 int dstr_free (struct dstr*) ;
 int dstr_printf (struct dstr*,char*,char*,char*) ;
 int obs_property_list_insert_string (int *,int,int ,char const*) ;
 int obs_property_list_item_disable (int *,int,int) ;

__attribute__((used)) static void insert_preserved_val(obs_property_t *p, const char *val)
{
 char *class = ((void*)0);
 char *title = ((void*)0);
 char *executable = ((void*)0);
 struct dstr desc = {0};

 build_window_strings(val, &class, &title, &executable);

 dstr_printf(&desc, "[%s]: %s", executable, title);
 obs_property_list_insert_string(p, 1, desc.array, val);
 obs_property_list_item_disable(p, 1, 1);

 dstr_free(&desc);
 bfree(class);
 bfree(title);
 bfree(executable);
}
