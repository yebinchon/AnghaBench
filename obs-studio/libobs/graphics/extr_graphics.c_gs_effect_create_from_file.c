
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_effect_t ;


 int LOG_ERROR ;
 int bfree (char*) ;
 int blog (int ,char*,char const*) ;
 int * find_cached_effect (char const*) ;
 int * gs_effect_create (char*,char const*,char**) ;
 int gs_valid_p (char*,char const*) ;
 char* os_quick_read_utf8_file (char const*) ;

gs_effect_t *gs_effect_create_from_file(const char *file, char **error_string)
{
 char *file_string;
 gs_effect_t *effect = ((void*)0);

 if (!gs_valid_p("gs_effect_create_from_file", file))
  return ((void*)0);

 effect = find_cached_effect(file);
 if (effect)
  return effect;

 file_string = os_quick_read_utf8_file(file);
 if (!file_string) {
  blog(LOG_ERROR, "Could not load effect file '%s'", file);
  return ((void*)0);
 }

 effect = gs_effect_create(file_string, file, error_string);
 bfree(file_string);

 return effect;
}
