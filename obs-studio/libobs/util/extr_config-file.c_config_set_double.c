
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sections; } ;
typedef TYPE_1__ config_t ;


 char* bzalloc (int) ;
 int config_set_item (TYPE_1__*,int *,char const*,char const*,char*) ;
 int os_dtostr (double,char*,int) ;

void config_set_double(config_t *config, const char *section, const char *name,
         double value)
{
 char *str = bzalloc(64);
 os_dtostr(value, str, 64);
 config_set_item(config, &config->sections, section, name, str);
}
