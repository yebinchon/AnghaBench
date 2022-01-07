
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int defaults; } ;
typedef TYPE_1__ config_t ;


 int bstrdup (char const*) ;
 int config_set_item (TYPE_1__*,int *,char const*,char const*,int ) ;

void config_set_default_string(config_t *config, const char *section,
          const char *name, const char *value)
{
 if (!value)
  value = "";
 config_set_item(config, &config->defaults, section, name,
   bstrdup(value));
}
