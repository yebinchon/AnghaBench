
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_t ;


 char* config_get_string (int *,char const*,char const*) ;
 double os_strtod (char const*) ;

double config_get_double(config_t *config, const char *section,
    const char *name)
{
 const char *value = config_get_string(config, section, name);
 if (value)
  return os_strtod(value);

 return 0.0;
}
