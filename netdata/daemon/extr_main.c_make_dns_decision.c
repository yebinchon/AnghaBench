
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SIMPLE_PATTERN ;


 char* config_get (char const*,char const*,char const*) ;
 int error (char*,char*,char const*,char const*) ;
 int simple_pattern_is_potential_name (int *) ;
 scalar_t__ strcmp (char*,char*) ;

int make_dns_decision(const char *section_name, const char *config_name, const char *default_value, SIMPLE_PATTERN *p)
{
    char *value = config_get(section_name,config_name,default_value);
    if(!strcmp("yes",value))
        return 1;
    if(!strcmp("no",value))
        return 0;
    if(strcmp("heuristic",value))
        error("Invalid configuration option '%s' for '%s'/'%s'. Valid options are 'yes', 'no' and 'heuristic'. Proceeding with 'heuristic'",
              value, section_name, config_name);
    return simple_pattern_is_potential_name(p);
}
