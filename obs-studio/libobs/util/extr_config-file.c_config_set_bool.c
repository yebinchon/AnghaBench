
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sections; } ;
typedef TYPE_1__ config_t ;


 char* bstrdup (char*) ;
 int config_set_item (TYPE_1__*,int *,char const*,char const*,char*) ;

void config_set_bool(config_t *config, const char *section, const char *name,
       bool value)
{
 char *str = bstrdup(value ? "true" : "false");
 config_set_item(config, &config->sections, section, name, str);
}
