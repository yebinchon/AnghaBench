
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* jsonp_strndup (char const*,int ) ;
 int strlen (char const*) ;

char *jsonp_strdup(const char *str)
{
    return jsonp_strndup(str, strlen(str));
}
