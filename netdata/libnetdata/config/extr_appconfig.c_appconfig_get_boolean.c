
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {int dummy; } ;


 char* appconfig_get (struct config*,char const*,char const*,char*) ;
 int strcasecmp (char*,char*) ;

int appconfig_get_boolean(struct config *root, const char *section, const char *name, int value)
{
    char *s;
    if(value) s = "yes";
    else s = "no";

    s = appconfig_get(root, section, name, s);
    if(!s) return value;

    if(!strcasecmp(s, "yes") || !strcasecmp(s, "true") || !strcasecmp(s, "on") || !strcasecmp(s, "auto") || !strcasecmp(s, "on demand")) return 1;
    return 0;
}
