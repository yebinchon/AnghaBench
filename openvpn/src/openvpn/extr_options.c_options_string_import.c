
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct options {int dummy; } ;
struct env_set {int dummy; } ;


 int read_config_string (char*,struct options*,char const*,int const,unsigned int const,unsigned int*,struct env_set*) ;

void
options_string_import(struct options *options,
                      const char *config,
                      const int msglevel,
                      const unsigned int permission_mask,
                      unsigned int *option_types_found,
                      struct env_set *es)
{
    read_config_string("[CONFIG-STRING]", options, config, msglevel, permission_mask, option_types_found, es);
}
