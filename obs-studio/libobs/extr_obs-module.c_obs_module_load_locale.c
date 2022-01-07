
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dstr {int array; int member_0; } ;
struct TYPE_4__ {int file; } ;
typedef TYPE_1__ obs_module_t ;
typedef int lookup_t ;


 int LOG_WARNING ;
 scalar_t__ astrcmpi (char const*,char const*) ;
 int bfree (char*) ;
 int blog (int ,char*,...) ;
 int dstr_cat (struct dstr*,char const*) ;
 int dstr_copy (struct dstr*,char*) ;
 int dstr_free (struct dstr*) ;
 char* obs_find_module_file (TYPE_1__*,int ) ;
 int text_lookup_add (int *,char*) ;
 int * text_lookup_create (char*) ;

lookup_t *obs_module_load_locale(obs_module_t *module,
     const char *default_locale, const char *locale)
{
 struct dstr str = {0};
 lookup_t *lookup = ((void*)0);

 if (!module || !default_locale || !locale) {
  blog(LOG_WARNING, "obs_module_load_locale: Invalid parameters");
  return ((void*)0);
 }

 dstr_copy(&str, "locale/");
 dstr_cat(&str, default_locale);
 dstr_cat(&str, ".ini");

 char *file = obs_find_module_file(module, str.array);
 if (file)
  lookup = text_lookup_create(file);

 bfree(file);

 if (!lookup) {
  blog(LOG_WARNING, "Failed to load '%s' text for module: '%s'",
       default_locale, module->file);
  goto cleanup;
 }

 if (astrcmpi(locale, default_locale) == 0)
  goto cleanup;

 dstr_copy(&str, "/locale/");
 dstr_cat(&str, locale);
 dstr_cat(&str, ".ini");

 file = obs_find_module_file(module, str.array);

 if (!text_lookup_add(lookup, file))
  blog(LOG_WARNING, "Failed to load '%s' text for module: '%s'",
       locale, module->file);

 bfree(file);
cleanup:
 dstr_free(&str);
 return lookup;
}
