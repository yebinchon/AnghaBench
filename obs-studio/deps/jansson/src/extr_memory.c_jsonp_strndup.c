
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* jsonp_malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

char *jsonp_strndup(const char *str, size_t len)
{
    char *new_str;

    new_str = jsonp_malloc(len + 1);
    if(!new_str)
        return ((void*)0);

    memcpy(new_str, str, len);
    new_str[len] = '\0';
    return new_str;
}
