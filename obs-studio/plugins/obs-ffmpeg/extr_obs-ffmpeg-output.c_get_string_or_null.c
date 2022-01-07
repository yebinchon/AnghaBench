
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_data_t ;


 char* obs_data_get_string (int *,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static inline const char *get_string_or_null(obs_data_t *settings,
          const char *name)
{
 const char *value = obs_data_get_string(settings, name);
 if (!value || !strlen(value))
  return ((void*)0);
 return value;
}
