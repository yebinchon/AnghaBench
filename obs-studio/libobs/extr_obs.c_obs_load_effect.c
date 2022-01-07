
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gs_effect_t ;


 int bfree (char*) ;
 int * gs_effect_create_from_file (char*,int *) ;
 char* obs_find_data_file (char const*) ;

gs_effect_t *obs_load_effect(gs_effect_t **effect, const char *file)
{
 if (!*effect) {
  char *filename = obs_find_data_file(file);
  *effect = gs_effect_create_from_file(filename, ((void*)0));
  bfree(filename);
 }

 return *effect;
}
