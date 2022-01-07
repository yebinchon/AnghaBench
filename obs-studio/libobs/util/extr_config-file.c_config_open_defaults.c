
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int defaults; } ;
typedef TYPE_1__ config_t ;


 int CONFIG_ERROR ;
 int config_parse_file (int *,char const*,int) ;

int config_open_defaults(config_t *config, const char *file)
{
 if (!config)
  return CONFIG_ERROR;

 return config_parse_file(&config->defaults, file, 0);
}
