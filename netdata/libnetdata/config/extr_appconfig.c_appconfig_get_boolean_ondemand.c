
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {int dummy; } ;


 int CONFIG_BOOLEAN_AUTO ;
 int CONFIG_BOOLEAN_NO ;
 int CONFIG_BOOLEAN_YES ;
 char* appconfig_get (struct config*,char const*,char const*,char*) ;
 int strcmp (char*,char*) ;

int appconfig_get_boolean_ondemand(struct config *root, const char *section, const char *name, int value)
{
    char *s;

    if(value == CONFIG_BOOLEAN_AUTO)
        s = "auto";

    else if(value == CONFIG_BOOLEAN_NO)
        s = "no";

    else
        s = "yes";

    s = appconfig_get(root, section, name, s);
    if(!s) return value;

    if(!strcmp(s, "yes"))
        return CONFIG_BOOLEAN_YES;
    else if(!strcmp(s, "no"))
        return CONFIG_BOOLEAN_NO;
    else if(!strcmp(s, "auto") || !strcmp(s, "on demand"))
        return CONFIG_BOOLEAN_AUTO;

    return value;
}
