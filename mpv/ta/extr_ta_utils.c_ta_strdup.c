
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;
 char* ta_strndup (void*,char const*,int ) ;

char *ta_strdup(void *ta_parent, const char *str)
{
    return ta_strndup(ta_parent, str, str ? strlen(str) : 0);
}
