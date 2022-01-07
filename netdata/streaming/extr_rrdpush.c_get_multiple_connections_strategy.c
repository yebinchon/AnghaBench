
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {int dummy; } ;
typedef int RRDPUSH_MULTIPLE_CONNECTIONS_STRATEGY ;




 char* appconfig_get (struct config*,char const*,char const*,char*) ;
 int error (char*,char const*,char const*,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static RRDPUSH_MULTIPLE_CONNECTIONS_STRATEGY get_multiple_connections_strategy(struct config *c, const char *section, const char *name, RRDPUSH_MULTIPLE_CONNECTIONS_STRATEGY def) {
    char *value;
    switch(def) {
        default:
        case 129:
            value = "allow";
            break;

        case 128:
            value = "deny";
            break;
    }

    value = appconfig_get(c, section, name, value);

    RRDPUSH_MULTIPLE_CONNECTIONS_STRATEGY ret = def;

    if(strcasecmp(value, "allow") == 0 || strcasecmp(value, "permit") == 0 || strcasecmp(value, "accept") == 0)
        ret = 129;

    else if(strcasecmp(value, "deny") == 0 || strcasecmp(value, "reject") == 0 || strcasecmp(value, "block") == 0)
        ret = 128;

    else
        error("Invalid stream config value at section [%s], setting '%s', value '%s'", section, name, value);

    return ret;
}
