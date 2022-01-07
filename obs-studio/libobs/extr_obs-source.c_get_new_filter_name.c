
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {char* array; int member_0; } ;
typedef int obs_source_t ;


 int dstr_copy (struct dstr*,char const*) ;
 int dstr_printf (struct dstr*,char*,char const*,int) ;
 int * obs_source_get_filter_by_name (int *,char*) ;
 int obs_source_release (int *) ;

__attribute__((used)) static char *get_new_filter_name(obs_source_t *dst, const char *name)
{
 struct dstr new_name = {0};
 int inc = 0;

 dstr_copy(&new_name, name);

 for (;;) {
  obs_source_t *existing_filter =
   obs_source_get_filter_by_name(dst, new_name.array);
  if (!existing_filter)
   break;

  obs_source_release(existing_filter);

  dstr_printf(&new_name, "%s %d", name, ++inc + 1);
 }

 return new_name.array;
}
