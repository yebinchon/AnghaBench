
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config {int dummy; } ;


 char* appconfig_get (struct config*,char const*,char const*,char*) ;
 int sprintf (char*,char*,long long) ;
 long long strtoll (char*,int *,int ) ;

long long appconfig_get_number(struct config *root, const char *section, const char *name, long long value)
{
    char buffer[100], *s;
    sprintf(buffer, "%lld", value);

    s = appconfig_get(root, section, name, buffer);
    if(!s) return value;

    return strtoll(s, ((void*)0), 0);
}
