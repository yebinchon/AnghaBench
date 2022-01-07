
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section {int dummy; } ;
struct config_option {int flags; char const* value; } ;
struct config {int dummy; } ;


 int CONFIG_VALUE_CHANGED ;
 int CONFIG_VALUE_LOADED ;
 int CONFIG_VALUE_USED ;
 int D_CONFIG ;
 struct config_option* appconfig_option_index_find (struct section*,char const*,int ) ;
 struct section* appconfig_section_find (struct config*,char const*) ;
 char const* appconfig_set (struct config*,char const*,char const*,char const*) ;
 int debug (int ,char*,char const*,char const*,char const*) ;
 int freez (char const*) ;
 scalar_t__ strcmp (char const*,char const*) ;
 char const* strdupz (char const*) ;

const char *appconfig_set_default(struct config *root, const char *section, const char *name, const char *value)
{
    struct config_option *cv;

    debug(D_CONFIG, "request to set default config in section '%s', name '%s', value '%s'", section, name, value);

    struct section *co = appconfig_section_find(root, section);
    if(!co) return appconfig_set(root, section, name, value);

    cv = appconfig_option_index_find(co, name, 0);
    if(!cv) return appconfig_set(root, section, name, value);

    cv->flags |= CONFIG_VALUE_USED;

    if(cv->flags & CONFIG_VALUE_LOADED)
        return cv->value;

    if(strcmp(cv->value, value) != 0) {
        cv->flags |= CONFIG_VALUE_CHANGED;

        freez(cv->value);
        cv->value = strdupz(value);
    }

    return cv->value;
}
