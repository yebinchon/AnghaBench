
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CONF_get_string (void*,char const*,char const*) ;

__attribute__((used)) static char *conf_lhash_get_string(void *db, const char *section, const char *value)
{
    return CONF_get_string(db, section, value);
}
