
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dstr {int array; } ;
struct TYPE_4__ {int defaults; } ;
typedef TYPE_1__ config_t ;


 int config_set_item (TYPE_1__*,int *,char const*,char const*,int ) ;
 int dstr_init (struct dstr*) ;
 int dstr_printf (struct dstr*,char*,double) ;

void config_set_default_double(config_t *config, const char *section,
          const char *name, double value)
{
 struct dstr str;
 dstr_init(&str);
 dstr_printf(&str, "%g", value);
 config_set_item(config, &config->defaults, section, name, str.array);
}
