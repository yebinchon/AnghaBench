
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* NCONF_get_string (void*,char const*,char const*) ;

__attribute__((used)) static char *nconf_get_string(void *db, const char *section, const char *value)
{
    return NCONF_get_string(db, section, value);
}
