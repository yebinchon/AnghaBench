
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef int config_t ;


 char* config_get_default_string (int *,char const*,char const*) ;
 int str_to_int64 (char const*) ;

int64_t config_get_default_int(config_t *config, const char *section,
          const char *name)
{
 const char *value = config_get_default_string(config, section, name);
 if (value)
  return str_to_int64(value);

 return 0;
}
